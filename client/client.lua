ESX = nil

pama_noclip = false
pama_godmode = false
pama_vanish = false
pama_noclipSpeed = 2.01
pama = {}
Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

-- Variables 

local isAdmin

Citizen.CreateThread(function()
	pama.CheckAdmin()
    while true do 
        Wait(150)
    end
end)

pama.CheckAdmin = function()
    isAdmin = nil
    TriggerServerEvent('pama_admin:isAdministrator')
	MunuAdmin()
				TriggerServerEvent('pama_admin:abrirmenu')
    while (isAdmin == nil) do
        Citizen.Wait(1)
    end
end

RegisterNetEvent('pama_admin:checkAdmin')
AddEventHandler('pama_admin:checkAdmin', function(state)
    isAdmin = state 
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        if IsControlJustReleased(0, 56) and isAdmin then 
			MunuAdmin()
		elseif IsControlJustReleased(0, 56) and not isAdmin then 
			ESX.ShowNotification('No tienes permisos para ver esto')
        end 
        if pama_noclip then
            local ped = PlayerPedId()
            local x,y,z = getPosition()
            local dx,dy,dz = getCamDirection()
            local speed = pama_noclipSpeed
        
  
            SetEntityVelocity(ped, 0.05,  0.05,  0.05)
  
            if IsControlPressed(0, 32) then
                x = x + speed * dx
                y = y + speed * dy
                z = z + speed * dz
            end
  
            if IsControlPressed(0, 269) then
                x = x - speed * dx
                y = y - speed * dy
                z = z - speed * dz
            end
  
            SetEntityCoordsNoOffset(ped,x,y,z,true,true,true)
        end
	end
end)




function MunuAdmin()
    local elements = {}

    local elements = {
        {label = "Noclip", value = "noclip"},
        {label = "GodMode", value = "godmode"},
        {label = "Teletransporte a punto", value = "tpoint"},
        {label = "Spawnear coche", value = "spawnCar"},
        {label = "Borrar vehículo", value = "clearVehicle"},
        {label = "Borrar el chat", value = "clearChat"},
        {label = "Rellenar vida", value = "heal"},
		{label = "Reparar coche", value = "fix"},
		{label = "Traje Admin", value = "staffrx"},
		{label = "Traje Admin", value = "staffrx"},
		{label = "Invisible",     value = "inv"},
		{label = "Anuncio Administrativo", value = "anuncio"},
		{label = "Cerrar",             value = "close"}
    }


    ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'adminMenu',
		{
			title  = "Menu administrativo",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "noclip" then
				TriggerEvent('pama_admin:nocliped')
				ESX.UI.Menu.CloseAll()
			elseif data.current.value == "godmode" then
				TriggerEvent('pama_admin:godmodePlayer')
				ESX.UI.Menu.CloseAll()
			elseif data.current.value == "tpoint" then
				if DoesBlipExist(GetFirstBlipInfoId(8)) then
					if IsPedSittingInAnyVehicle(PlayerPedId()) then
						teleportByCar()
					else
						teleportToPoint()
					end
				else
					TriggerEvent('esx:showNotification', "Tienes que seleccionar un punto en el mapa.")
				end
			elseif data.current.value == "spawnCar" then
				openGetterMenu('spawnCar')
			elseif data.current.value == "clearVehicle" then
				TriggerEvent('esx:deleteVehicle')
				TriggerEvent('esx:showNotification', "Vehículo ~r~eliminado~w~.")
			elseif data.current.value == "clearChat" then
				TriggerEvent('pama_admin:clearchat')
				
		elseif data.current.value == "staffrx" then
			if Config.traje then
				trajerx()
			else
				ESX.ShowNotification('No tienes permiso para ver esto')
			end	
			elseif data.current.value == "heal" then
				TriggerEvent('pama_admin:healPlayer')
			elseif data.current.value == "fix" then
				TriggerEvent( 'pama_admin:repairVehicle')
			elseif data.current.value == "inv" then
				TriggerEvent('pama_admin:invisible')
			elseif data.current.value == "anuncio" then
				if Config.anuncio then

					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'announceadmin',
					{
						title = "Mensaje Correspondiente",
					}, function(data, menu)
						local msg = data.value
						TriggerServerEvent('Pama Admin Logs:announce', msg)
						menu.close()
					end, function(data, menu)
						menu.close()
					end)

				else
					ESX.ShowNotification('No tienes permiso para esto')
				end
			elseif data.current.value == "close" then
				ESX.UI.Menu.CloseAll()
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openGetterMenu(type)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'getterAdminMenu',
	{
		title = "Ingrese el parámetro correspondiente",
	}, function(data, menu)
		local parameter = data.value
		if type == "spawnCar" then
			TriggerEvent('esx:spawnVehicle', parameter)
			TriggerEvent('esx:showNotification', "Se ha intentado spawnear un : ~g~"..parameter.."~w~.")
		end

		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

--[[
	REGISTROS
]]

RegisterNetEvent('pama_admin:nocliped')
AddEventHandler('pama_admin:nocliped',function()
	pama_noclip = not pama_noclip
    local ped = PlayerPedId()

    if pama_noclip then
    	SetEntityInvincible(ped, true)
    	SetEntityVisible(ped, false, false)
    else
    	SetEntityInvincible(ped, false)
    	SetEntityVisible(ped, true, false)
    end

    if pama_noclip == true then 
        ESX.ShowNotification('Has activado el ~g~noclip.')
    else
        ESX.ShowNotification('Has desactivado el ~r~noclip.')
    end
end)

RegisterNetEvent('pama_admin:invisible')
AddEventHandler('pama_admin:invisible', function()
	pama_vanish = not pama_vanish
    local ped = PlayerPedId()
    SetEntityVisible(ped, not pama_vanish, false)
    if pama_vanish == true then 
        ESX.ShowNotification('Has activado el ~g~invisible.')
    else
        ESX.ShowNotification('Has desactivado el ~r~invisible.')
    end
end)

RegisterNetEvent('pama_admin:godmodePlayer')
AddEventHandler('pama_admin:godmodePlayer', function()
	pama_godmode = not pama_godmode
	local playerPed = PlayerPedId()
	SetEntityInvincible(playerPed, not pama_godmode, false)
	if pama_godmode then
		ESX.ShowNotification('Has activado el ~g~ Godmode.')
	else
		ESX.ShowNotification('Has desactivado el ~r~Godmode.')
	end
end)

RegisterNetEvent("pama_admin:clearchat")
AddEventHandler("pama_admin:clearchat", function()
    TriggerEvent('chat:clear', -1)
  ESX.ShowNotification('~g~Has limpiado todo el chat.')
end)

RegisterNetEvent('pama_admin:repairVehicle')
AddEventHandler('pama_admin:repairVehicle', function()
    local ply = PlayerPedId()
    local plyVeh = GetVehiclePedIsIn(ply)
    if IsPedInAnyVehicle(ply) then 
        SetVehicleFixed(plyVeh)
        SetVehicleDeformationFixed(plyVeh)
        SetVehicleUndriveable(plyVeh, false)
        SetVehicleEngineOn(plyVeh, true, true)
        ESX.ShowNotification('~g~Has reparado el coche')
    else
        ESX.ShowNotification('~r~Debes estar en un vehículo para poder repararlo')
    end
end)

RegisterNetEvent('pama_admin:teleport')


RegisterNetEvent('pama_admin:healPlayer')
AddEventHandler('pama_admin:healPlayer', function()
    if isAdmin then 
        local pama_ped = PlayerPedId()
        SetEntityHealth(pama_ped, 200)
        ESX.ShowNotification('~y~Te has curado.')
        ClearPedBloodDamage(pama_ped)
        ResetPedVisibleDamage(pama_ped)
        ClearPedLastWeaponDamage(pama_ped)
    else
        ESX.ShowNotification('~r~No eres administrador.')
    end
end)

--[[
	FUNCIONES
]]

getPosition = function()
	local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
  	return x,y,z
end

getCamDirection = function()
	local heading = GetGameplayCamRelativeHeading()+GetEntityHeading(PlayerPedId())
	local pitch = GetGameplayCamRelativePitch()
  
	local x = -math.sin(heading*math.pi/180.0)
	local y = math.cos(heading*math.pi/180.0)
	local z = math.sin(pitch*math.pi/180.0)
  
	local len = math.sqrt(x*x+y*y+z*z)
	if len ~= 0 then
	  x = x/len
	  y = y/len
	  z = z/len
	end
  
	return x,y,z
end

teleportByCar = function()
	local player = PlayerPedId()
	local blip = GetFirstBlipInfoId(8)
	local coche =  GetVehiclePedIsIn(PlayerPedId(),false)
		local coord = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
		SetEntityCoords(coche,coord.x,coord.y,coord.z+5)
		TriggerEvent('esx:showNotification', "Te has teletransportado ~g~correctamente.")
		SetPedIntoVehicle(PlayerPedId(), coche, - 1)
		DrawNotification(false, true)
end

teleportToPoint = function()
    local player = PlayerPedId()
	local blip = GetFirstBlipInfoId(8)
	local coord = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
	SetEntityCoords(player,coord.x,coord.y,coord.z)
	TriggerEvent('esx:showNotification', "Te has teletransportado ~g~correctamente.")
	DrawNotification(false, true)
end

------------------------------------
--------- Codigo Traje -------------
------------------------------------

function trajerx() 
    Neo = not Neo
	if not Neo then  
		local model = GetEntityModel(PlayerPedId())

		if model == GetHashKey("mp_m_freemode_01") then
			trajeadmin() end
			ESX.ShowNotification('Entraste a administrar')
	elseif Neo then       

		TriggerEvent('skinchanger:getSkin', function(skin) 

			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
				TriggerEvent('skinchanger:loadSkin', skin)
			end)

			ESX.ShowNotification('Acabaste de administrar')
	end)
		end
	end

function trajeadmin() 
	TriggerEvent('skinchanger:getSkin', function()
		local couleur = math.random(0,9)
		if GetEntityModel(PlayerPedId()) == 1885233650 then
			TriggerEvent('skinchanger:loadSkin', Config.traje)
		end
	end)
end