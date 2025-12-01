QBCore = exports['qb-core']:GetCoreObject()

-- Make tablet item usable
QBCore.Functions.CreateUseableItem(Config.ItemName, function(source)
    TriggerClientEvent('tablet:open', source)
end)

-- Command to give tablet for testing
QBCore.Commands.Add('givetablet', 'Give tablet item', {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem('tablet', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You received a tablet!', 'success')
end)

-- Handle app events
RegisterNetEvent('tablet:startCarBoost')
AddEventHandler('tablet:startCarBoost', function()
    local src = source
    -- Trigger qb-carboost start
    TriggerEvent('qb-carboost:startBoost', src)
end)