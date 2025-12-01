QBCore = exports['qb-core']:GetCoreObject()

-- Open tablet
RegisterNetEvent('tablet:open')
AddEventHandler('tablet:open', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openTablet',
        apps = Config.Apps
    })
end)

-- Close tablet
RegisterNUICallback('closeTablet', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

-- Handle app click
RegisterNUICallback('appClick', function(data, cb)
    local app = data.app
    if app.event then
        TriggerServerEvent(app.event)
    end
    cb('ok')
end)