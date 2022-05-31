local display = false
local auto_hide = true

function SetDisplay(bool)
	display = bool
	SendNUIMessage(
		{
			type = bool,
			data = Config.data
		}
	)
end

AddEventHandler('playerSpawned', function()
	if Config.auto_hide then
		auto(Config.time)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if not IsPauseMenuActive() and auto_hide then
			SetDisplay(true)
		else
			SetDisplay(false)
		end
		if auto_hide == false then
			return
		end
	end
end)

function auto(time)
	if auto_hide then
		Citizen.Wait(1000 * time)
		SetDisplay(false)
		auto_hide = false
	else
		return
	end
end