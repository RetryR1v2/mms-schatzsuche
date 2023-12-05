local RSGCore = exports['rsg-core']:GetCoreObject()
local player = PlayerPedId()
local id = PlayerId()
local life = GetEntityHealth(player)
local name = GetPlayerName(id)
local serverid = GetPlayerServerId(id)
local playerped = GetPlayerPed(id)

local schatzsucheactive = 0
local prompt = 0
local spawnedtruhe = false
---------------------------------------------------------------------------------

-- Benutze Schatzkarte

RegisterNetEvent('mms-schatzsuche:client:benutzeschatzkarte')
AddEventHandler('mms-schatzsuche:client:benutzeschatzkarte', function()
    if schatzsucheactive == 0 then
        schatzsucheactive = math.random(1,10)
        StarteSchatzsuche()
    else
        RSGCore.Functions.Notify('Du hast bereits eine Schatzsuche gestartet.', 'success')
    end
end)

--- Starte die Schatzsuche 1-10

function StarteSchatzsuche()
    if schatzsucheactive == 1 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 1
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche1()
    elseif schatzsucheactive == 2 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 2
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche2()
    elseif schatzsucheactive == 3 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 3
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche3()
    elseif schatzsucheactive == 4 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 4
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche4()
    elseif schatzsucheactive == 5 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 5
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche5()
    elseif schatzsucheactive == 6 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 6
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche6()
    elseif schatzsucheactive == 7 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 7
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche7()
    elseif schatzsucheactive == 8 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 8
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche8()
    elseif schatzsucheactive == 9 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 9
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche9()
    elseif schatzsucheactive == 10 then
        RSGCore.Functions.Notify('Du hast eine Schatzsuche gestartet.', 'success')
        Citizen.Wait(200)
        prompt = 10
        lib.showTextUI('Finde die Schatztruhe!')
        Schatzsuche10()
    end
end



-------------------------------------------Schatzsuche----------------------------------------------

-- Schatzsuche 1
function Schatzsuche1()
-- Prompt
    Citizen.Wait(500)
    exports['rsg-core']:createPrompt(Config.Schatzsuche1Prompt, Config.Schatzsuche1Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche1Name, {
        type = 'client',
        event = 'mms-questsystem:client:schatzsucheende',
        args = {},
    })

-- Truhe
local hash = GetHashKey('s_re_rcboatbox01x')
        while not HasModelLoaded(hash) do
            Wait(10)
            RequestModel(hash)
        end
        if spawnedtruhe == false then
                RequestModel(hash)
                schatztruhe = CreateObject(hash, Config.Schatzsuche1Truhe  , true, false, false) 
                SetEntityAsMissionEntity(schatztruhe, true)
                PlaceObjectOnGroundProperly(schatztruhe, true)
                FreezeEntityPosition(schatztruhe, true)
                spawnedtruhe = true
        end
-- BLIP
    blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche1Blip)
    SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
    SetBlipScale(blipschatzsuche, 5.5)
    Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )

    while schatzsucheactive == 1 do
        Citizen.Wait(0)
        Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche1Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
    end
end

-- Schatzsuche 2
function Schatzsuche2()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche2Prompt, Config.Schatzsuche2Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche2Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche2Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche2Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 2 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche2Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 3
function Schatzsuche3()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche3Prompt, Config.Schatzsuche3Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche3Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche3Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche3Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 3 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche3Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 4
function Schatzsuche4()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche4Prompt, Config.Schatzsuche4Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche4Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche4Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche4Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 4 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche4Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 5
function Schatzsuche5()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche5Prompt, Config.Schatzsuche5Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche5Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche5Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche5Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 5 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche5Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 6
function Schatzsuche6()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche6Prompt, Config.Schatzsuche6Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche6Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche6Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche6Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 6 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche6Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end

    -- Schatzsuche 7
function Schatzsuche7()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche7Prompt, Config.Schatzsuche7Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche7Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche7Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche7Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 7 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche7Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 8
function Schatzsuche8()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche8Prompt, Config.Schatzsuche8Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche8Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche8Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche8Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 8 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche8Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end


    -- Schatzsuche 9
function Schatzsuche9()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche9Prompt, Config.Schatzsuche9Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche9Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche9Truhe  , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche9Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 9 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche9Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end
    
    

    -- Schatzsuche 10
function Schatzsuche10()
    -- Prompt
        Citizen.Wait(500)
        exports['rsg-core']:createPrompt(Config.Schatzsuche10Prompt, Config.Schatzsuche10Truhe, RSGCore.Shared.Keybinds['J'],  (' ') .. Config.Schatzsuche10Name, {
            type = 'client',
            event = 'mms-questsystem:client:schatzsucheende',
            args = {},
        })
    
    -- Truhe
    
    local hash = GetHashKey('s_re_rcboatbox01x')
            while not HasModelLoaded(hash) do
                Wait(10)
                RequestModel(hash)
            end
            if spawnedtruhe == false then
                    RequestModel(hash)
                    schatztruhe = CreateObject(hash, Config.Schatzsuche10Truhe , true, false, false) 
                    SetEntityAsMissionEntity(schatztruhe, true)
                    PlaceObjectOnGroundProperly(schatztruhe, true)
                    FreezeEntityPosition(schatztruhe, true)
                    spawnedtruhe = true
            end
    
    -- BLIP
        blipschatzsuche = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.Schatzsuche10Blip)
        SetBlipSprite(blipschatzsuche, GetHashKey('blip_code_waypoint'), true)
        SetBlipScale(blipschatzsuche, 5.5)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipschatzsuche, Config.SchatzsucheBlip )
        while schatzsucheactive == 10 do
            Citizen.Wait(0)
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,Config.Schatzsuche10Truhe+1.0,0,0,0,0,0,0,60.0,60.0,1.5,255,0,0,100,0, 0, 0, 0, 0, 0, 0)
        end
    end
    
    ----- Schließe die Schatzsuche ab


    RegisterNetEvent('mms-questsystem:client:schatzsucheende')
    AddEventHandler('mms-questsystem:client:schatzsucheende', function()
        CrouchAnim()
        RSGCore.Functions.Progressbar('Öffne Truhe','Du öffnest die Truhe!',Config.Opentime, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        end)

        --- Reward System
    if Config.EmptyChests == true and Config.RandomItems == true then
        local reward = math.random(1,3)
        if reward == 1 then
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
            TriggerServerEvent('mms-schatzsuche:server:reward')
        elseif reward == 2 and Config.RandomItems == true then
            RandomItem()
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
            randomitem = Config.Randomitems[randomindex]
            print(randomitem)
            TriggerServerEvent('mms-schatzsuche:server:randomitem' , randomitem)
        elseif reward == 3 and Config.RandomItems == false then
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Leider war die Truhe leer!', 'success')
        else
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Leider war die Truhe leer!', 'success')
        end
    
    elseif Config.EmptyChests == false and Config.RandomItems == true then
        local reward = math.random(1,2)
        if reward == 1 then
        RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
        TriggerServerEvent('mms-schatzsuche:server:reward')
        elseif reward == 2 then
            RandomItem()
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
            randomitem = Config.Randomitems[randomindex]
            print(randomitem)
            TriggerServerEvent('mms-schatzsuche:server:randomitem' , randomitem)
        end
    
    elseif Config.EmptyChests == true and Config.RandomItems == false then
        local reward = math.random(1,2)
        if reward == 1 then
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
            TriggerServerEvent('mms-schatzsuche:server:reward')
        elseif reward == 2 then
            RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Leider war die Truhe leer!', 'success')
        end
    
    elseif Config.EmptyChests == false and Config.RandomItems == false then
        RSGCore.Functions.Notify('Schatzsuche Abgeschlossen! Du findest einen Schatz!', 'success')
        TriggerServerEvent('mms-schatzsuche:server:reward')
    end



        --Lösche Truhe, Blip und Setze Schatzsuche zurück
        if DoesBlipExist(blipschatzsuche) then
            RemoveBlip(blipschatzsuche)
        end
        DeleteObject(schatztruhe)
        DeletePrompts()
        schatzsucheactive = 0
        spawnedtruhe = false
        lib.hideTextUI()
    end)


----------------- Utilities -----------------

function RandomItem()
    randomindex = math.random(1,#Config.Randomitems)
    return Config.Randomitems[randomindex]
end



------ Animation

function CrouchAnim()
    local dict = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    TaskPlayAnim(ped, dict, "inspectfloor_player", 0.5, 8.0, -1, 1, 0, false, false, false)
end

------ Delte Prompts

function DeletePrompts()
    if schatzsucheactive >=1 then
    if  prompt == 1 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche1Prompt)
        
    elseif prompt == 2 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche2Prompt)

    elseif prompt == 3 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche3Prompt)

    elseif prompt == 4 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche4Prompt)

    elseif prompt == 5 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche5Prompt)
        
    elseif prompt == 6 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche6Prompt)
    
    elseif prompt == 7 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche7Prompt)
        
    elseif prompt == 8 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche8Prompt)

    elseif prompt == 9 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche9Prompt)

    elseif prompt == 10 then
        exports['rsg-core']:deletePrompt(Config.Schatzsuche10Prompt)
    end
else
    return
end
end

AddEventHandler("onResourceStop",function (resourceName)
    if resourceName == GetCurrentResourceName() then
        if DoesBlipExist(blipschatzsuche) then
            RemoveBlip(blipschatzsuche)
        end
        DeleteObject(schatztruhe)
        DeletePrompts()
        lib.hideTextUI()
        schatzsucheactive = 0
        spawnedtruhe = false
    end
end)

AddEventHandler("error",function (resourceName)
    if resourceName == GetCurrentResourceName() then
        if DoesBlipExist(blipschatzsuche) then
            RemoveBlip(blipschatzsuche)
        end
        DeleteObject(schatztruhe)
        DeletePrompts()
        lib.hideTextUI()
        schatzsucheactive = 0
        spawnedtruhe = false
    end
end)