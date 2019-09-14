script.on_event(defines.events.on_player_created, function(event)
	local items
	local armor

	items = {
		{"power-armor-mk2", 1},
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
	
	if (game.active_mods["IndustrialRevolution"] and settings.startup["Use-steambots"].value) then
		if (settings.startup["Construction-robots-count"].value > 0) then items[#items+1]={"steambot", settings.startup["Construction-robots-count"].value} end
	else
		if (settings.startup["Construction-robots-count"].value > 0) then items[#items+1]={"construction-robot", settings.startup["Construction-robots-count"].value} end
	end
	
-- only if Industrial Revolution is present:
	if game.active_mods["IndustrialRevolution"] then
		if (settings.startup["Repair-tool-count"].value > 0) then items[#items+1]={settings.startup["Repair-tool-type"].value, settings.startup["Repair-tool-count"].value} end
		if (settings.startup["Uranium-fuel-count"].value > 0) then items[#items+1]={"uranium-fuel-cell", settings.startup["Uranium-fuel-count"].value} end
		if settings.startup["Monowheel"].value then 
			items[#items+1] = {"monowheel", 1}
			if (settings.startup["Wheel-fuel-count"].value > 0) then items[#items+1] = {settings.startup["Wheel-fuel-type"].value, settings.startup["Wheel-fuel-count"].value} end
		end
	else 
		if (settings.startup["Repair-tool-count"].value > 0) then items[#items+1]={"repair-pack", settings.startup["Repair-tool-count"].value} end
	end
		

	
	local player = game.players[event.player_index]
	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

	local grid = player.get_inventory(defines.inventory.character_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)
