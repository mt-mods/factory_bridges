FB = {}
FB.NAME = "factory_bridges"

if core.get_modpath("intllib") then
	FB.LOCAL = intllib.Getter()
else
	FB.LOCAL = function(s)
		return s
	end
end

dofile(core.get_modpath(FB.NAME) .. "/models.lua")
dofile(core.get_modpath(FB.NAME) .. "/nodes.lua")
dofile(core.get_modpath(FB.NAME) .. "/items.lua")
dofile(core.get_modpath(FB.NAME) .. "/crafts.lua")
