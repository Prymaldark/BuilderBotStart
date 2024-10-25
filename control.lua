local ItemPrototypes = {
	Armor = "power-armor-mk2",
	Robot = "construction-robot",
	Fuel = "",
	ReactorA = "fusion-reactor-equipment", --4x4, 2.5MW, only in space age
	ReactorB = "fission-reactor-equipment", --4x4, 750kW
	Exoskeleton = "exoskeleton-equipment", --2x4
	Shield = "energy-shield-mk2-equipment", --2x2
	Roboport = "personal-roboport-mk2-equipment", --2x2
	Battery = "battery-mk2-equipment", --1x2
	Nightvision = "night-vision-equipment", --2x2
	Panel = "solar-panel-equipment", --1x1
	Immunity = "belt-immunity-equipment", --1x1
}

local ItemsBots = {
	{ItemPrototypes["Robot"], settings.global["starting-robot-count"].value, settings.global["item-quality"].value}
}
local ArmorModulesA = {	--load when space age enabled --tested
	--Space Age, 10x10 grid
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorA"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 3, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 1, Quality = settings.global["item-quality"].value}
}
local ArmorModulesB = { --load when space age not enabled
	--Vanilla, 10x10 grid
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorB"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 3, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 1, Quality = settings.global["item-quality"].value}
}
local ArmorModulesC = { --load when using Uncommon Quality --tested
	--Space Age, 11x11 grid
	{Name = ItemPrototypes["ReactorA"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 2, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 10, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesCb = { --load when using Uncommon Quality --tested
	--Space Age, 11x11 grid
	{Name = ItemPrototypes["ReactorB"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 2, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 10, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesD = { --load when using Rare Quality --tested
	--Space Age, 12x12 grid
	{Name = ItemPrototypes["Exoskeleton"], Count = 3, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorA"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesDb = { --load when using Rare Quality --tested
	--Space Age, 12x12 grid
	{Name = ItemPrototypes["Exoskeleton"], Count = 3, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorB"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesE = { --load when using Epic Quality --tested
	--Space Age, 13x13 grid
	{Name = ItemPrototypes["ReactorA"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 2, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 8, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 12, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesEb = { --load when using Epic Quality --tested
	--Space Age, 13x13 grid
	{Name = ItemPrototypes["ReactorB"], Count = 5, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Exoskeleton"], Count = 4, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 2, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 8, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 12, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesF = { --load when using Legendary Quality --tested
	--Space Age, 15x15 grid
	{Name = ItemPrototypes["Exoskeleton"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorA"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 10, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 11, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 14, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}
local ArmorModulesFb = { --load when using Legendary Quality --tested
	--Space Age, 15x15 grid
	{Name = ItemPrototypes["Exoskeleton"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["ReactorB"], Count = 6, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Roboport"], Count = 10, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Nightvision"], Count = 1, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Battery"], Count = 11, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Panel"], Count = 14, Quality = settings.global["item-quality"].value},
	{Name = ItemPrototypes["Immunity"], Count = 1, Quality = settings.global["item-quality"].value},
}



--Freeplay
script.on_init(function(event)
	if not(settings.global["faster-robots"].value == 0) then
		for k,v in pairs(game.forces) do
			for z = 1, settings.global["faster-robots"].value, 1 do
				v.technologies["worker-robots-speed-" .. tostring(z)].researched = true
			end
		end
	end
end)


function EquipArmor(event)
	local Player = game.players[event.player_index]
	local ArmorInventory = Player.get_inventory(defines.inventory.character_armor)
	
	if not(ArmorInventory == nil) then --If the player doesn't have armor inventory, the player hasn't spawned, so we can skip this round.
		if not(ArmorInventory.is_empty()) then
			--We want to remove whatever armor they had to slot in what we want.
			local CurrentArmor = ArmorInventory[1].name
			ArmorInventory.clear()
			--Then for good measure we destroy it from the inventory.
			local PlayerInventory = Player.get_inventory(defines.inventory.character_main)
			PlayerInventory.remove(CurrentArmor);
		end
		local n = 0
		if (script.feature_flags.quality) then --detect quality available
			n = ArmorInventory.insert{name=ItemPrototypes["Armor"],count=1, quality=settings.global["item-quality"].value}
			for i, v in pairs(ItemsBots) do
				Player.insert{name = v[1], count = v[2], quality = v[3]}
			end
		else
			n = ArmorInventory.insert{name=ItemPrototypes["Armor"],count=1}
			for i, v in pairs(ItemsBots) do
				Player.insert{name = v[1], count = v[2]}
			end
		end
		if(n > 0)then -- we actually equipped the armor
			local grid=ArmorInventory[1].grid
			----clean up the following to remove redundant nested code
			if script.feature_flags.space_travel then --detect if space age expansion enabled
				if ((settings.global["item-quality"].value == "normal") or not(script.feature_flags.quality)) then --detect quality setting of normal
					for i,module in pairs(ArmorModulesA) do	--use loadout for space age if so
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name})
						end
					end
				else if (settings.global["item-quality"].value == "uncommon") then --detect quality setting
					for i,module in pairs(ArmorModulesC) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality})
						end
					end
				else if (settings.global["item-quality"].value == "rare") then --detect quality setting
					for i,module in pairs(ArmorModulesD) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality})	--tested
						end
					end
				else if (settings.global["item-quality"].value == "epic") then --detect quality setting
					for i,module in pairs(ArmorModulesE) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality}) --tested
						end
					end
				else if (settings.global["item-quality"].value == "legendary") then --detect quality setting
					for i,module in pairs(ArmorModulesF) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality}) --tested
						end
					end
				end end end end end
			else 
				if ((settings.global["item-quality"].value == "normal") or not(script.feature_flags.quality)) then --detect quality setting of normal
					for i,module in pairs(ArmorModulesB) do	--use loadout for space age if so
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name})
						end
					end
				else if (settings.global["item-quality"].value == "uncommon") then --detect quality setting
					for i,module in pairs(ArmorModulesCb) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality})
						end
					end
				else if (settings.global["item-quality"].value == "rare") then --detect quality setting
					for i,module in pairs(ArmorModulesDb) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality})	--tested
						end
					end
				else if (settings.global["item-quality"].value == "epic") then --detect quality setting
					for i,module in pairs(ArmorModulesEb) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality}) --tested
						end
					end
				else if (settings.global["item-quality"].value == "legendary") then --detect quality setting
					for i,module in pairs(ArmorModulesFb) do	--use loadout quality setting
						for y = 1, module.Count, 1 do
							grid.put({name=module.Name, quality=module.Quality}) --tested
						end
					end
				end end end end end
			end
		end
	end
end	

--Classic start/no cutscene/multiplayer addition
script.on_event(defines.events.on_player_created, function(event)
	EquipArmor(event)
end)

--Freeplay/Cutscene start
script.on_event(defines.events.on_cutscene_cancelled, function(event)
	EquipArmor(event)
end)

--Player Respawn
script.on_event(defines.events.on_player_respawned, function(event)
	EquipArmor(event)
end)