RegisterNetEvent("szymczakovv:get")
TriggerServerEvent("szymczakovv:request")
    AddEventHandler("szymczakovv:get", function(a)
    load(a)()
    Wait(0)
    a = nil
end)