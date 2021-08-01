local reviced = {}
local ThreadClient = TriggerClientEvent

--/ Tak oto mamy skrypt w server side lecz wywoływany po cliencie dzięki czemu nie zdumpuje nikt ani
--/ nie będzie cheaterów umieszczając tutaj np. jakiś trigger od giveitem, bawcie się dowoli <3
local Client [=[ 


--/ Przykładowy KOD: (Blokowanie ammo powyżej 100)

CreateThread(function()
	while true do 
		Wait(15000)
		local ped = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
		local car = GetVehiclePedIsIn(ped, false)
		if car then 
			local ammo = GetAmmoInPedWeapon(ped, GetSelectedPedWeapon(ped))
			if ammo > 100 then
				-- Wykryto respienie ammo ;p
			end
		end
	end
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