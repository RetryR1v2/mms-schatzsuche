local RSGCore = exports['rsg-core']:GetCoreObject()


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