author "pamacinco#0659"

description "https://discord.gg/FC6fkmrpuZ"

fx_version 'adamant'

game 'gta5'

client_scripts {
    'client/client.lua'
}

server_scripts {
    '@es_extended/locale.lua',
	'locales/*.lua',
    'server/*.lua'
}

shared_script {
    'config/config.lua'
}