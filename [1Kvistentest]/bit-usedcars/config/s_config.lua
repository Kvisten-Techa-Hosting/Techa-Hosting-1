--  $$$$$$\  $$\   $$\ $$$$$$$$\  $$$$$$\  $$\   $$\       $$\      $$\  $$$$$$\  $$\   $$\ $$$$$$$$\ $$\     $$\ 
-- $$  __$$\ $$ |  $$ |$$  _____|$$  __$$\ $$ | $$  |      $$$\    $$$ |$$  __$$\ $$$\  $$ |$$  _____|\$$\   $$  |
-- $$ /  \__|$$ |  $$ |$$ |      $$ /  \__|$$ |$$  /       $$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |$$ |       \$$\ $$  / 
-- $$ |      $$$$$$$$ |$$$$$\    $$ |      $$$$$  /        $$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |$$$$$\      \$$$$  /  
-- $$ |      $$  __$$ |$$  __|   $$ |      $$  $$<         $$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |$$  __|      \$$  /   
-- $$ |  $$\ $$ |  $$ |$$ |      $$ |  $$\ $$ |\$$\        $$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |$$ |          $$ |    
-- \$$$$$$  |$$ |  $$ |$$$$$$$$\ \$$$$$$  |$$ | \$$\       $$ | \_/ $$ | $$$$$$  |$$ | \$$ |$$$$$$$$\     $$ |    
--  \______/ \__|  \__|\________| \______/ \__|  \__|      \__|     \__| \______/ \__|  \__|\________|    \__|
function checkMoney(xPlayer)
    if Config.Framework == "esx" then
        return xPlayer.getAccount(Config.moneyAccount).money
    else
        return xPlayer.PlayerData.money[Config.moneyAccount]
    end
end

-- $$$$$$$\  $$$$$$$$\ $$\      $$\  $$$$$$\  $$\    $$\ $$$$$$$$\       $$\      $$\  $$$$$$\  $$\   $$\ $$$$$$$$\ $$\     $$\ 
-- $$  __$$\ $$  _____|$$$\    $$$ |$$  __$$\ $$ |   $$ |$$  _____|      $$$\    $$$ |$$  __$$\ $$$\  $$ |$$  _____|\$$\   $$  |
-- $$ |  $$ |$$ |      $$$$\  $$$$ |$$ /  $$ |$$ |   $$ |$$ |            $$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |$$ |       \$$\ $$  / 
-- $$$$$$$  |$$$$$\    $$\$$\$$ $$ |$$ |  $$ |\$$\  $$  |$$$$$\          $$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |$$$$$\      \$$$$  /  
-- $$  __$$< $$  __|   $$ \$$$  $$ |$$ |  $$ | \$$\$$  / $$  __|         $$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |$$  __|      \$$  /   
-- $$ |  $$ |$$ |      $$ |\$  /$$ |$$ |  $$ |  \$$$  /  $$ |            $$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |$$ |          $$ |    
-- $$ |  $$ |$$$$$$$$\ $$ | \_/ $$ | $$$$$$  |   \$  /   $$$$$$$$\       $$ | \_/ $$ | $$$$$$  |$$ | \$$ |$$$$$$$$\     $$ |    
-- \__|  \__|\________|\__|     \__| \______/     \_/    \________|      \__|     \__| \______/ \__|  \__|\________|    \__|

function removeMoney(xPlayer, price)
    if Config.Framework == "esx" then
        xPlayer.removeAccountMoney(Config.moneyAccount, price)
    else
        xPlayer.Functions.RemoveMoney(Config.moneyAccount, price, "Vehicle purchase")
    end
end

--  $$$$$$\  $$$$$$$\  $$$$$$$\        $$\      $$\  $$$$$$\  $$\   $$\ $$$$$$$$\ $$\     $$\ 
-- $$  __$$\ $$  __$$\ $$  __$$\       $$$\    $$$ |$$  __$$\ $$$\  $$ |$$  _____|\$$\   $$  |
-- $$ /  $$ |$$ |  $$ |$$ |  $$ |      $$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |$$ |       \$$\ $$  / 
-- $$$$$$$$ |$$ |  $$ |$$ |  $$ |      $$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |$$$$$\      \$$$$  /  
-- $$  __$$ |$$ |  $$ |$$ |  $$ |      $$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |$$  __|      \$$  /   
-- $$ |  $$ |$$ |  $$ |$$ |  $$ |      $$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |$$ |          $$ |    
-- $$ |  $$ |$$$$$$$  |$$$$$$$  |      $$ | \_/ $$ | $$$$$$  |$$ | \$$ |$$$$$$$$\     $$ |    
-- \__|  \__|\_______/ \_______/       \__|     \__| \______/ \__|  \__|\________|    \__|

function addMoney(xPlayer, price)
    if Config.Framework == "esx" then
        xPlayer.addAccountMoney(Config.moneyAccount, price)
    else
        xPlayer.Functions.AddMoney(Config.moneyAccount, price, "Vehicle sale")
    end
end

--  $$$$$$\   $$$$$$\   $$$$$$\  $$$$$$\ $$$$$$$$\ $$$$$$$$\ $$\     $$\       $$\      $$\  $$$$$$\  $$\   $$\ $$$$$$$$\ $$\     $$\ 
-- $$  __$$\ $$  __$$\ $$  __$$\ \_$$  _|$$  _____|\__$$  __|\$$\   $$  |      $$$\    $$$ |$$  __$$\ $$$\  $$ |$$  _____|\$$\   $$  |
-- $$ /  \__|$$ /  $$ |$$ /  \__|  $$ |  $$ |         $$ |    \$$\ $$  /       $$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |$$ |       \$$\ $$  / 
-- \$$$$$$\  $$ |  $$ |$$ |        $$ |  $$$$$\       $$ |     \$$$$  /        $$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |$$$$$\      \$$$$  /  
--  \____$$\ $$ |  $$ |$$ |        $$ |  $$  __|      $$ |      \$$  /         $$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |$$  __|      \$$  /   
-- $$\   $$ |$$ |  $$ |$$ |  $$\   $$ |  $$ |         $$ |       $$ |          $$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |$$ |          $$ |    
-- \$$$$$$  | $$$$$$  |\$$$$$$  |$$$$$$\ $$$$$$$$\    $$ |       $$ |          $$ | \_/ $$ | $$$$$$  |$$ | \$$ |$$$$$$$$\     $$ |    
--  \______/  \______/  \______/ \______|\________|   \__|       \__|          \__|     \__| \______/ \__|  \__|\________|    \__|

function removeSocietyMoney(price)
    if Config.Framework == "esx" then
        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. Config.societyName, function(account)
            account.removeMoney(price)
        end)
    else
        exports['qb-management']:RemoveMoney(Config.societyName, price)
    end
end

function getSocietyMoney()
    if Config.Framework == "esx" then
        local money = 0
        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. Config.societyName, function(account)
            if account.money < 0 then
                money = 0
            else
                money = account.money
            end
        end)
        return money
    else
        return exports['qb-management']:GetAccount(Config.societyName)
    end
end

function addSocietyMoney(price)
    if Config.Framework == "esx" then
        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. Config.societyName, function(account)
            account.addMoney(price)
        end)
    else
        exports['qb-management']:AddMoney(Config.societyName, price)
    end
end

function afterPurchase(xPlayer, plate)

end

-- $$$$$$$\  $$$$$$$\        $$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
-- $$  __$$\ $$  __$$\       $$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
-- $$ |  $$ |$$ |  $$ |      $$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$ |  $$ |$$$$$$$\ |      $$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
-- $$ |  $$ |$$  __$$\       $$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
-- $$ |  $$ |$$ |  $$ |      $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$$$$$$  |$$$$$$$  |      $$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \_______/ \_______/       \__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/

-- function to be applied when a vehicle is offered for sale; the owner of the vehicle is set to null in the databas
function saveVeh(plate)
    if Config.Framework == "esx" then
        SqlFunc(Config.Mysql, 'execute', 'UPDATE owned_vehicles SET owner = NULL WHERE plate = @plate', {
            ['@plate'] = plate
        })
    else
        SqlFunc(Config.Mysql, 'execute',
            'UPDATE player_vehicles SET license = NULL, citizenid = NULL WHERE plate = @plate', {
                ['@plate'] = plate
            })
    end
end

-- function that is applied when a vehicle is purchased, the new owner's identifier is applied to the vehicle
function asignVehicle(xPlayer, plate)
    if Config.Framework == "esx" then
        SqlFunc(Config.Mysql, 'execute', 'UPDATE owned_vehicles SET owner = @owner WHERE plate = @plate', {
            ['@owner'] = xPlayer.getIdentifier(),
            ['@plate'] = plate
        })
    else
        SqlFunc(Config.Mysql, 'execute',
            'UPDATE player_vehicles SET license = @license, citizenid = @citizenid WHERE plate = @plate', {
                ['@license'] = xPlayer.PlayerData.license,
                ['@citizenid'] = xPlayer.PlayerData.citizenid,
                ['@plate'] = plate
            })
    end
end

-- function that is applied after using the vehicle purchase contract. The owner of the vehicle is changed
function changeOwner(xPlayer, plate)
    if Config.Framework == "esx" then
        SqlFunc(Config.Mysql, 'execute', 'UPDATE owned_vehicles SET owner = @owner WHERE plate = @plate', {
            ['@owner'] = xPlayer.license,
            ['@plate'] = plate
        })
    else
        SqlFunc(Config.Mysql, 'execute',
            'UPDATE player_vehicles SET license = @license, citizenid = @citizenid WHERE plate = @plate', {
                ['@license'] = xPlayer.PlayerData.license,
                ['@citizenid'] = xPlayer.PlayerData.citizenid,
                ['@plate'] = plate
            })
    end
end

-- function to check if a user is a vehicle owner.
function checkOwnVehicle(xPlayer, plate)
    if Config.Framework == "esx" then
        local result = SqlFunc(Config.Mysql, 'fetchAll',
            'SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
                ['@owner'] = xPlayer.getIdentifier(),
                ['@plate'] = plate:match("^%s*(.-)%s*$")
            })
        return result
    else
        local result = SqlFunc(Config.Mysql, 'fetchAll',
            'SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
                ['@citizenid'] = xPlayer.PlayerData.citizenid,
                ['@plate'] = plate:match("^%s*(.-)%s*$")
            })
        return result
    end
end
