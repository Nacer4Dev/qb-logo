function ShowLogo()
    SendNUIMessage({
        type = "showLogo",
        enable = true
    })
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowLogo() 
        break 
    end
end)
