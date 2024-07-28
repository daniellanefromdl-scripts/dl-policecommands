RegisterNetEvent('sendNearbyMessage')
AddEventHandler('sendNearbyMessage', function(playerCoords, radius, message)
    local players = GetPlayers()

    for _, playerId in ipairs(players) do
        local targetPed = GetPlayerPed(playerId)
        local targetCoords = GetEntityCoords(targetPed)
        local distance = #(playerCoords - targetCoords)

        -- Check if the player is within the radius
        if distance <= radius then
            TriggerClientEvent('chat:addMessage', playerId, {
                args = {("^1%s"):format(message)}
            })
        end
    end
end)