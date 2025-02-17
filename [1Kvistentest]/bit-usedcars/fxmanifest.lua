fx_version 'cerulean'
game 'gta5'

author 'bitc0de'

client_scripts {'config/shared.lua', 'client/callbacks.lua', 'client/events.lua', 'client/functions.lua',
                'client/main.lua'}

server_scripts {'version.lua', 'config/shared.lua', 'config/s_config.lua', 'server/main.lua'}

ui_page "html/index.html"

files {'html/index.html', 'html/script.js', 'html/assets/*'}

escrow_ignore {'config/*.lua'}

lua54 'yes'

dependency '/assetpacks'