
pama = {}

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
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
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
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:lognoclip')
AddEventHandler('pama_admin:lognoclip', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Esta usando Noclip',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:lognoclipoff')
AddEventHandler('pama_admin:lognoclipoff', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Deja de usar Noclip',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:godmode')
AddEventHandler('pama_admin:godmode', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Esta usando GodMode',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:godmodemod')
AddEventHandler('pama_admin:godmodemod', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Moderador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Esta usando GodMode',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.UsoMenuBasicoModerador, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('pama_admin:godmodeoff')
AddEventHandler('pama_admin:godmodeoff', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Deja de usar GodMode',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:loginvisible')
AddEventHandler('pama_admin:loginvisible', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Esta usando Invisible',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:loginvisibleoff')
AddEventHandler('pama_admin:loginvisibleoff', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Deja de usar Invisible',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:logsreparar')
AddEventHandler('pama_admin:logsreparar', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Repara un Vehiculo',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)


RegisterServerEvent('pama_admin:logstpm')
AddEventHandler('pama_admin:logstpm', function()
	local _source = source
		local connect = {
			{
				["color"] = "16753920",
				["title"] = 'Administrador: '.. '['..GetPlayerName(_source).. ']',
				["description"] = 'Realiza TP al punto',
				["footer"] = {
				["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
				["icon_url"] = "",
				},
			}
		}
	PerformHttpRequest(Config.AperturaLog, function(err, text, headers) end, 'POST', json.encode({username = "pama_admin", embeds = connect, avatar_url = 'https://media.discordapp.net/attachments/814582038698393680/927206702015741972/a_b80528d09c7faaf626951dc4780f1977.gif?width=215&height=215'}), { ['Content-Type'] = 'application/json' })
end)
