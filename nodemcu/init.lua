wifi.setmode(wifi.STATION)
wifi.sta.config("hackafe.org", "")
wifi.sta.connect()

tmr.alarm(1, 1000, 1, function()
   if wifi.sta.status() ~= 5 then
      print("\tbrym, btym...")
   else
      dofile("main.lua")
      tmr.stop(1)
   end
end)
