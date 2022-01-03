
pama = {}

local pamaAdmins = {
    'steam:11000013c252f6c', --- ids admins
    'steam:110000141cfa1c2', --- ids admins
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
