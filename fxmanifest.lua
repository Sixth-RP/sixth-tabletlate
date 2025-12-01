fx_version 'cerulean'
game 'gta5'

author 'Sixth-RP'
description 'FiveM Tablet Script'
version '1.0.0'

ui_page 'html/index.html'

shared_script 'config.lua'
client_script 'client.lua'
server_script 'server.lua'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js'
}

dependencies {
    'qb-core'
}