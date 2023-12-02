local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/RetryR1v2/mms-schatzsuche/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

       
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('Current Version: %s'):format(currentVersion))
            versionCheckPrint('success', ('Latest Version: %s'):format(text))
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end


----------------- CREATE ITEM SCHATZKARTE -----------------------------

RSGCore.Functions.CreateUseableItem("schatzkarte", function(source, item)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem('schatzkarte', 1) then
        TriggerClientEvent("mms-schatzsuche:client:benutzeschatzkarte", source, 'schatzkarte')
        TriggerClientEvent("inventory:client:ItemBox", source, RSGCore.Shared.Items['schatzkarte'], "remove")
    end
end)

----- Reward Schatzsuche

RegisterNetEvent('mms-schatzsuche:server:reward', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
        if Config.Dynamicrewards == true then
            local Money = math.random(Config.RewardMoneyMin,Config.RewardMoneyMax)
            Player.Functions.AddMoney('cash',Money)
            TriggerClientEvent('ox_lib:notify', src, {title = 'Du erhältst ' .. Money .. ' $. Glückwunsch!!!', description =  'Erfolg', type = 'success' , duration = 5000})
        elseif Config.Dynamicrewards == false then
            Player.Functions.AddMoney('cash',Config.RewardMoney)
            TriggerClientEvent('ox_lib:notify', src, {title = 'Du erhältst ' .. Config.Money .. ' $ . Glückwunsch!!!', description =  'Erfolg', type = 'success' , duration = 5000})
        end

    end)

----- Reward Randomitem

RegisterNetEvent('mms-schatzsuche:server:randomitem' , function(randomitem)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    print(randomitem)
    Player.Functions.AddItem(randomitem,1)
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[randomitem], "add")
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du erhältst 1 ' .. randomitem .. ' . Glückwunsch!!!', description =  'Erfolg', type = 'success' , duration = 5000})
end)



--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()