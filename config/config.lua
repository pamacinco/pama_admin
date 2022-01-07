-------- Configuracion Basica ------------------------

-- CAMBIAR ADMINS EN EL SERVER.LUA LINEA 4

-- CAMBIAR VELOCIDAD NOCLIP CLIENT.LUA LINEA 6

Config = {}

Config.scriptVersion = 1.1 -- No lo toques

Config.ESX = 'esx:getSharedObject' -- Tu Trigger ESX // You Trigger ESX

------- Configuracion Tecla de Apertura -----------


Config.anuncio = true -- Para activar los anuncios
Config.traje = true -- Para activar el traje de admin


----- Logs Administrador / Administrator -----

Config.AperturaLog = "" --- Log Al Abrir el Menu o Intentar Abrir el Menu (Administrador)
Config.UsoMenuBasico = "" --- Log Al Utilizar alguna Accion Basica (Administrador)


--- Traje Administrativo // Costume Administrative ---

Config.traje = { 
    ['sex'] = 0, 
	['bags_1'] = 0, ['bags_2'] = 0,  
	['tshirt_1'] = 15, ['tshirt_2'] = 2, 
    ['torso_1'] = 178, ['torso_2'] = 2,
    ['arms'] = 31,
    ['pants_1'] = 77, ['pants_2'] = 2,
    ['shoes_1'] = 55, ['shoes_2'] = 2,
    ['mask_1'] = 0, ['mask_2'] = 0,
    ['bproof_1'] = 0,
    ['chain_1'] = 0,
    ['helmet_1'] = 91, ['helmet_2'] = 2,
}
