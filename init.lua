minetest.register_globalstep(function(dtime)
	for _, player in pairs(minetest.get_connected_players()) do
		if player ~= nil then
			if player:get_player_control()["aux1"] then
				player:set_physics_override({speed = 2})
			else
				player:set_physics_override({speed = 1})
			end
		end
	end
end)
