script.on_event(defines.events.on_player_created, function(event)
	local items
	local armor

	if (game.active_mods["Krastorio2"]) then 
		items = {
			{settings.startup["Armor-type"].value, 1},
		}
	else
		items = {
			{"power-armor-mk2", 1},
		}
	end


	if (game.active_mods["Krastorio2"]) then 
		armor = {
			{"personal-roboport-mk2-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-roboport-mk2-equipment"},
--			{settings.startup["Battery-type"].value, settings.startup["Battery-count"].value}, 
--			{settings.startup["Reactor-type"].value, settings.startup["Reactor-count"].value},
--			{settings.startup["Exoskel-type"].value, settings.startup["Exoskel-count"].value},
--			{settings.startup["Vision-type"].value, settings.startup["Vision-count"].value},
--			{settings.startup["Panel-type"].value, settings.startup["Panel-count"].value},
			{"belt-immunity-equipment"},	
		}
	else
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
	end
	
	if (game.active_mods["IndustrialRevolution"] and settings.startup["Use-steambots"].value) then
		if (settings.startup["Construction-robots-count"].value > 0) then items[#items+1]={"steambot", settings.startup["Construction-robots-count"].value} end
	else
		if (settings.startup["Construction-robots-count"].value > 0) then items[#items+1]={"construction-robot", settings.startup["Construction-robots-count"].value} end
	end
	
-- only if Krastorio2 is active:
	if (game.active_mods["Krastorio2"]) then 
		items[#items+1]={settings.startup["Reactor-fuel-type"].value, settings.startup["Reactor-fuel-count"].value} 
		items[#items+1]={settings.startup["Battery-type"].value, settings.startup["Battery-count"].value}
		items[#items+1]={settings.startup["Reactor-type"].value, settings.startup["Reactor-count"].value}
		items[#items+1]={settings.startup["Exoskel-type"].value, settings.startup["Exoskel-count"].value}
		items[#items+1]={settings.startup["Vision-type"].value, 1}
		items[#items+1]={settings.startup["Panel-type"].value, settings.startup["Panel-count"].value}	
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
