script.on_event(defines.events.on_player_created, function(event)
	local items
	local armor

	items = {
		{"power-armor-mk2", 1},
		{"construction-robot", 100},

	}
	armor = {
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"exoskeleton-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"night-vision-equipment"},
		{"belt-immunity-equipment"},
		{"portable-solar-panel"},
	}

	local player = game.players[event.player_index]
	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

	local grid = player.get_inventory(defines.inventory.character_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)
