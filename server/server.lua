pama = {}

local _CreateThread, _RegisterServerEvent = CreateThread, RegisterServerEvent

local pamaAdmins = {
    'steam:11000013c252f6c', --- ids admins
    'steam:110000140084c5f', --- ids admins
  --  'steam:110000141cfa1c2', --- ids admins
  --  'steam:110000141cfa1c2', --- ids admins
  --  'steam:110000141cfa1c2', --- ids admins
  --  'steam:110000141cfa1c2', --- ids admins
}

ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Funciones pama 

pama.isAdmin = function()
    local pama_identifier = GetPlayerIdentifiers(src)
    pama_identifier = pama_identifier[1]
    for i, v in pairs(pamaAdmins) do 
        if v == pama_identifier then 
            return true 
        end
    end 
    return false
end




RegisterServerEvent('pama_admin:isAdministrator')
AddEventHandler('pama_admin:isAdministrator', function()
    local pamaidentifier = GetPlayerIdentifiers(source)
    pamaidentifier = pamaidentifier[1]
    for a, v in pairs(pamaAdmins) do 
        if v == pamaidentifier then 
            TriggerClientEvent('pama_admin:checkAdmin', source, true)
            return true 
        end
    end 
    return false 
end)





------------------------- Logs Config Eventos -----------------------------
RegisterServerEvent('pama_admin:abrirmenu')
AddEventHandler('pama_admin:abrirmenu', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Abre el menu Administrativo',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:abrirmenufail')
AddEventHandler('pama_admin:abrirmenufail', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Usuario: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Intenta Abrir el Menu Administrativo pero no tiene Permisos',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:godmode')
AddEventHandler('pama_admin:godmode', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se activo/desactivo el godmode',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:noclip')
AddEventHandler('pama_admin:noclip', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se activo/desactivo el noclip',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:invisible')
AddEventHandler('pama_admin:invisible', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se activo/desactivo el invisible',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:spawncar')
AddEventHandler('pama_admin:spawncar', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se giveo un vehiculo',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:heal')
AddEventHandler('pama_admin:heal', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se hizo heal',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:traje')
AddEventHandler('pama_admin:traje', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Se puso el traje de administrador',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.PamaLogs, function(err, text, headers) end, 'POST', json.encode({username = "Pama AdminMenu Logs", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)
---- NO TOCAR TE CHECKEA LA VERSIÓN

_CreateThread(function()
    local name = "[^4Pama_AdminMenu^7]"
    checkVersion = function(error, latestVersion, headers)
        local currentVersion = Config.scriptVersion            
        
        if tonumber(currentVersion) < tonumber(latestVersion) then
            print(name .. " ^1esta desactualizado.\nTu versión: ^8" .. currentVersion .. "\nVersión nueva: ^2" .. latestVersion .. "\n^3Actualiza^7: https://github.com/pamacinco/pama_admin")
        elseif tonumber(currentVersion) > tonumber(latestVersion) then
            print(name .. " te saltaste una version ^2" .. latestVersion)
        else
            print(name .. " esta en la version correspondiente ^2" .. currentVersion )
        end
    end

    PerformHttpRequest("https://raw.githubusercontent.com/pamacinco/versions/master/menuadmin.txt", checkVersion, "GET")
end)