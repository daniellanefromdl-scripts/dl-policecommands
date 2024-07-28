-- Function to register a command and handle the server event
function registerCommand(commandName, message)
    RegisterCommand(commandName, function(source, args, rawCommand)
        local playerPed = GetPlayerPed(-1)
        local playerCoords = GetEntityCoords(playerPed)
        local radius = 20.0 -- Define the radius to find nearby players

        -- Trigger server event to send message to nearby players
        TriggerServerEvent('sendNearbyMessage', playerCoords, radius, message)
    end, false)
end

-- Register commands
registerCommand('sp', '^1[!Atlas]: ^4Searches person what do I find?')
registerCommand('sv', '^1[!Atlas]: ^4Searches vehicle what do I find?')
registerCommand('sloc', '^1[!Atlas]: ^4Searches location what do I find?')
registerCommand('bp', '^1[!Atlas]: ^4Border Patrol is ACTIVE give us some good 911 calls and RP')
registerCommand('gsp', '^1[!Atlas]: ^4Georgia State Patrol is ACTIVE give us some good 911 calls and RP')
registerCommand('cp', '^1[!Atlas]: ^4Checks pulse what do i find?')
registerCommand('cpr', '^1[!Atlas]: ^4Trys CPR on person does it work?')