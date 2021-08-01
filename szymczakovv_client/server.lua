local reviced = {}
local ThreadClient = TriggerClientEvent

--/ Tak oto mamy skrypt w server side lecz wywoływany po cliencie dzięki czemu nie zdumpuje nikt ani
--/ nie będzie cheaterów umieszczając tutaj np. jakiś trigger od giveitem, bawcie się dowoli <3
local Client [=[ 


--/ Przykładowy KOD:


AddEventHandler('onClientResourceStop', function(resourceName)
	--/Próba zatrzymania skryptu
	--/Trigger Ban/Logi
end)

]=]

RegisterServerEvent('szymczakovv:request')
AddEventHandler('szymczakovv:request', function()
    local _source = source
    if not reviced[_source] then
        ThreadClient("szymczakovv:get", _source, Client)
        reviced[_source] = true
    end
end)
