Config, Jobs, Lang, Office, Noti, Blip = {}, {}, {}, {}, {}, {}
--  $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ $$$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\
-- $$  __$$\ $$  __$$\ $$$\  $$ |$$  _____|\_$$  _|$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |
-- $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ |        $$ |  $$ /  \__|$$ |  $$ |$$ |  $$ |$$ /  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |
-- $$ |      $$ |  $$ |$$ $$\$$ |$$$$$\      $$ |  $$ |$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$ |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |
-- $$ |      $$ |  $$ |$$ \$$$$ |$$  __|     $$ |  $$ |\_$$ |$$ |  $$ |$$  __$$< $$  __$$ |  $$ |     $$ |  $$ |  $$ |$$ \$$$$ |
-- $$ |  $$\ $$ |  $$ |$$ |\$$$ |$$ |        $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |  $$ |     $$ |  $$ |  $$ |$$ |\$$$ |
-- \$$$$$$  | $$$$$$  |$$ | \$$ |$$ |      $$$$$$\ \$$$$$$  |\$$$$$$  |$$ |  $$ |$$ |  $$ |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |
-- \______/  \______/ \__|  \__|\__|      \______| \______/  \______/ \__|  \__|\__|  \__|  \__|   \______| \______/ \__|  \__|

-- Use "esx" or "qb"
Config.Framework = "qb"
-- If you are using one of the most recent versions of ESX, set the script name. Default = "es_extended"
Config.ESXExport = "es_extended"
-- Default ESX: "esx:getSharedObject" | Default QB: "qb-core"
Config.Core = "qb-core"
-- oxmysql, mysql-async or ghmattisql
Config.Mysql = "oxmysql"
-- Set the discord webhook to receive notifications when a vehicle is sold
Config.Discord = "https://discord.com/api/webhooks/1331697526981529682/MtfsE8wOo65XoKtjBvk_DrTQL9kuxJAy_Z0l0QpHStYwiVmZNK1KEMMSwbJ2evJTqNmz"
-- Set the discord webhook to receive notifications when a contract is signed
Config.contractDiscord = "https://discord.com/api/webhooks/1331697526981529682/MtfsE8wOo65XoKtjBvk_DrTQL9kuxJAy_Z0l0QpHStYwiVmZNK1KEMMSwbJ2evJTqNmz"
-- Account where money will be deducted or added to
Config.moneyAccount = "bank"
-- Set the society name
Config.societyName = "cardealer"
-- Font for alert fonts. (Draw3DText)
Config.alertTextFont = 4
-- Command to sell vehicles
Config.sellCommand = "sellcar"
-- Item used for users to sell vehicles to the dealer
Config.contractItem = "contract"
-- Set to true if you want the item to be deleted once it has been used.
Config.removeContractAfterUse = true
-- List of vehicles that may not be sold
Config.blacklistedVehicles = {}
-- Set to true if you want to be able to use a command to open the dashboard
Config.useDashboardCommand = true
-- Command to open the dashboard
Config.dashboardCommand = "usedcars"
-- Set to true if you want the boss to be able to hire employees and fire them.
Config.bossCanHire = true
-- Set the distance from which the draw3dtext will be visible
Config.drawDistance = 1.5
-- Set to true if you want to activate the draw3dtext above the vehicles showing the name, price and if it has tuning.
Config.showDraw3DText = true
-- Set to true if you use the multi-job system
Config.useMultiJob = true
-- Set the cooldown time for check the player Job
Config.checkJobTimer = 300000

-- $$$$$$$\  $$\       $$$$$$\ $$$$$$$\
-- $$  __$$\ $$ |      \_$$  _|$$  __$$\
-- $$ |  $$ |$$ |        $$ |  $$ |  $$ |
-- $$$$$$$\ |$$ |        $$ |  $$$$$$$  |
-- $$  __$$\ $$ |        $$ |  $$  ____/
-- $$ |  $$ |$$ |        $$ |  $$ |
-- $$$$$$$  |$$$$$$$$\ $$$$$$\ $$ |
-- \_______/ \________|\______|\__|

Blip.coord = {
    x = 548.12,
    y = -241.44,
    z = 49.98
}
Blip.blip = 523
Blip.blipColor = 43
Blip.blipScale = 0.7
Blip.blipText = "Brugtvognsforhandler"

--    $$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\
--    \__$$ |$$  __$$\ $$  __$$\ $$  __$$\
--       $$ |$$ /  $$ |$$ |  $$ |$$ /  \__|
--       $$ |$$ |  $$ |$$$$$$$\ |\$$$$$$\
-- $$\   $$ |$$ |  $$ |$$  __$$\  \____$$\
-- $$ |  $$ |$$ |  $$ |$$ |  $$ |$$\   $$ |
-- \$$$$$$  | $$$$$$  |$$$$$$$  |\$$$$$$  |
-- \______/  \______/ \_______/  \______/

-- Authorized work for the sale and management of vehicles
Jobs.authorized = {
    ["autoexotic"] = true
}
Jobs.bossGrade = 5

-- $$\      $$\  $$$$$$\  $$$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$$\
-- $$$\    $$$ |$$  __$$\ $$  __$$\ $$ | $$  |$$  _____|$$  __$$\
-- $$$$\  $$$$ |$$ /  $$ |$$ |  $$ |$$ |$$  / $$ |      $$ |  $$ |
-- $$\$$\$$ $$ |$$$$$$$$ |$$$$$$$  |$$$$$  /  $$$$$\    $$$$$$$  |
-- $$ \$$$  $$ |$$  __$$ |$$  __$$< $$  $$<   $$  __|   $$  __$$<
-- $$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$ |\$$\  $$ |      $$ |  $$ |
-- $$ | \_/ $$ |$$ |  $$ |$$ |  $$ |$$ | \$$\ $$$$$$$$\ $$ |  $$ |
-- \__|     \__|\__|  \__|\__|  \__|\__|  \__|\________|\__|  \__|

-- Set the office coordinates where the boss can hire and fire employees

Office = {
    -- COORDS
    x = 1223.52,
    y = 2734.87,
    z = 38.01,
    -- TYPE
    mtype = 23,
    -- RGB COLOR:
    r = 0,
    g = 100,
    b = 58,
    -- SCALE
    scale = 2.0
}

-- $$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\
-- \__$$  __|$$  __$$\ $$  __$$\ $$  __$$\ $$  _____|\__$$  __|
--    $$ |   $$ /  $$ |$$ |  $$ |$$ /  \__|$$ |         $$ |
--    $$ |   $$$$$$$$ |$$$$$$$  |$$ |$$$$\ $$$$$\       $$ |
--    $$ |   $$  __$$ |$$  __$$< $$ |\_$$ |$$  __|      $$ |
--    $$ |   $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |         $$ |
--    $$ |   $$ |  $$ |$$ |  $$ |\$$$$$$  |$$$$$$$$\    $$ |
--    \__|   \__|  \__|\__|  \__| \______/ \________|   \__|

-- Set to true if you want to use target
Config.useTarget = true

-- Function to use the target with the vehicles
function entityTarget(entity, event, label)
    exports['ox_target']:AddTargetEntity(entity, {
        options = {{
            type = "client",
            event = event,
            icon = "fas fa-box-circle-check",
            label = label
        }},
        distance = 3.0
    })
end

-- Function to use the target with the office zone to open the UI
function boxZoneTarget()
    exports['ox_target']:AddBoxZone("UsedCars", vector3(563.03, -240.53, 49.98), 2, 2, {
        name = "UsedCars",
        heading = 0.0,
        debugPoly = false,
        minZ = 30.0,
        maxZ = 40.0
    }, {
        options = {{
            type = "client",
            event = "bit-usedcars:openUI",
            icon = "fas fa-sign-in-alt",
            label = "Dashboard"
        }},
        distance = 2.5
    })
end

-- $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\
-- $$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  _____|\_$$  _|$$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\
-- $$$$\ $$ |$$ /  $$ |  $$ |     $$ |  $$ |        $$ |  $$ /  \__|$$ /  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$ $$\$$ |$$ |  $$ |  $$ |     $$ |  $$$$$\      $$ |  $$ |      $$$$$$$$ |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\
-- $$ \$$$$ |$$ |  $$ |  $$ |     $$ |  $$  __|     $$ |  $$ |      $$  __$$ |  $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\
-- $$ |\$$$ |$$ |  $$ |  $$ |     $$ |  $$ |        $$ |  $$ |  $$\ $$ |  $$ |  $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ | \$$ | $$$$$$  |  $$ |   $$$$$$\ $$ |      $$$$$$\ \$$$$$$  |$$ |  $$ |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|  \__| \______/   \__|   \______|\__|      \______| \______/ \__|  \__|  \__|   \______| \______/ \__|  \__| \______/

function notifications(notitype, message, time)
    -- Change this trigger for your notification system keeping the variables
    TriggerEvent("codem-notification", message, time, notitype)
end

-- Notifications types:
Noti.info = "info"
Noti.check = "check"
Noti.error = "error"

-- Notification time:
Noti.time = 5000

-- $$\        $$$$$$\  $$\   $$\  $$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\
-- $$ |      $$  __$$\ $$$\  $$ |$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\ $$  _____|
-- $$ |      $$ /  $$ |$$$$\ $$ |$$ /  \__|$$ |  $$ |$$ /  $$ |$$ /  \__|$$ |
-- $$ |      $$$$$$$$ |$$ $$\$$ |$$ |$$$$\ $$ |  $$ |$$$$$$$$ |$$ |$$$$\ $$$$$\
-- $$ |      $$  __$$ |$$ \$$$$ |$$ |\_$$ |$$ |  $$ |$$  __$$ |$$ |\_$$ |$$  __|
-- $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |
-- $$$$$$$$\ $$ |  $$ |$$ | \$$ |\$$$$$$  |\$$$$$$  |$$ |  $$ |\$$$$$$  |$$$$$$$$\
-- \________|\__|  \__|\__|  \__| \______/  \______/ \__|  \__| \______/ \________|

Lang.withdraw = "You have withdrawn the vehicle"
Lang.noMoney = "You don't have enough money"
Lang.removeVehicle = "Remove vehicle"
Lang.buyVehicle = "Buy vehicle"
Lang.inVehicle = "You must be in a vehicle to use this command"
Lang.nearVehicle = "You must be near a vehicle to use this"
Lang.noInputs = "You must enter a vehicle data"
Lang.name = "Name"
Lang.vehicleName = "Vehicle name"
Lang.price = "Price"
Lang.tuning = "Full Tuning"
Lang.yes = "Yes"
Lang.no = "No"
Lang.offer = "Offer for sale"
Lang.confirm = "Are you sure you want to buy the"
Lang.confirm2 = "vehicle for"
Lang.confirmAuthorized = "Are you sure you want to remove the vehicle"
Lang.buy = "Buy"
Lang.cancel = "Cancel"
Lang.remove = "Remove"
Lang.noOwn = "You do not own this vehicle"
Lang.nearPlayer = "You must be near a player to use the contract"
Lang.inspect = "Inspect vehicle"
Lang.noAuthorized = "You are not authorized to use this"
Lang.fired = "The employee has been fired"
Lang.fireError = "The employee could not be dismissed"
Lang.openMenu = "Open menu"
Lang.noVehicles = "There are no vehicles for sale"

-- $$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\
-- $$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\
-- $$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\
-- $$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\
-- $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/

function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
    TriggerEvent("bit-interact:Start", "E", text)
    --[[SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r,g,b,a)
    SetTextDropShadow(0,0,0,0,255)
    SetTextEdge(1,0,0,0,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)]]
end

function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255) -- You can change the text color here
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z + 2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
