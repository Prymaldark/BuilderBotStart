script.on_event(defines.events.on_player_created, function(event)
	local items
	local armor

	items = {
		{"power-armor-mk2", 1},
		{"construction-robot", 100},

	}
	armor = {
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"solar-panel-equipment"},
		{"belt-immunity-equipment"},
		{"night-vision-equipment"},
		{"exoskeleton-equipment"},
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
