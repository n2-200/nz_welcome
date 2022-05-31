Config = {}


Config.data = {
	img = './logo.jpg',			--  picture
	key = 'T',					--  button
	key_text = 'open chat',		--  Key Description
	key_hide = true,			-- When it is true, the button is hidden and only the welcome message is displayed. If it is false, it is displayed together.
	text = 'N2YUN',				--  Server name (or welcome)
}

Config.auto_hide = true		--  When it is true, it will start auto-hide, if it is false, it will be displayed all the time
Config.time = 100 			--  In seconds, the time is calculated from the time of entering the server (it will only take effect when Config.auto_hide = true)