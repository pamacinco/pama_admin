-------- Configuracion Basica ------------------------

-- CAMBIAR ADMINS EN EL SERVER.LUA LINEA 4

Config = {}

Config.Locale  = 'es' -- Configuracion de Lenguaje // Language Settings

Config.ESX = 'esx:getSharedObject' -- Tu Trigger ESX // You Trigger ESX

------- Configuracion Tecla de Apertura -----------

Config.AperturaRx = 121 -- Tecla de apertura // Key Open Menu

Config.Anuncio = true -- Para activar los anuncios

------- Configuracion Permisos // Configuration Permissions -----------


Config.RxAdministradores = { --- Configurar Permisos Admin // Config Permission Admin
    'steam:110000140084c5f', --RxTr

}

Config.RxModeradores = { --- Configurar Permisos Admin // Config Permission Mod
    -- 'steam:110000115d2d091', --RxTr
}

------- Configuracion Noclip // Configuration Noclip -----------

Config.SpeedNoclip = 2.01 --- Velocidad Noclip // Noclip speed


------- Configuracion de Logs // Logs Configuration -----------

----- Logs Administrador / Administrator -----

Config.AperturaLog = "" --- Log Al Abrir el Menu o Intentar Abrir el Menu (Administrador)
Config.UsoMenuBasico = "" --- Log Al Utilizar alguna Accion Basica (Administrador)


--- Traje Administrativo // Costume Administrative ---

Config.TrajeAdminRx = { 
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
