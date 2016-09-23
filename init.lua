-- Minetest 0.4.14+ mod: colorblocks
-- namespace: colorblocks
-- (c) 2016 by d.kartaschew

local load_start = os.clock()

local namespace = "colorblocks"

local items = { 	{ "grill_steel_block", "Steel Block (Grill)", "colorblocks_grill.png", 
								{"default:steelblock", "default:steelblock", "default:steelblock", "dye:grey"}, 3 },

								{ "kahki_steel_block", "Kahki Steel Block", "colorblocks_kahki_block.png", 
								{"default:steelblock", "dye:green", "dye:grey"}, 1 },
								{ "blue_steel_block", "Blue Steel Block", "colorblocks_blue_block.png", 
								{"default:steelblock", "dye:blue"}, 1 },
								{ "red_steel_block", "Red Steel Block", "colorblocks_red_block.png", 
								{"default:steelblock", "dye:red"}, 1 },
								{ "white_steel_block", "White Steel Block", "colorblocks_white_block.png", 
								{"default:steelblock", "dye:white"}, 1 },
								{ "grey_steel_block", "Grey Steel Block", "colorblocks_grey_block.png", 
								{"default:steelblock", "dye:grey"}, 1 } ,
								{ "dkgrey_steel_block", "Dark Grey Steel Block", "colorblocks_dark_grey_block.png", 
								{"default:steelblock", "dye:dark_grey"}, 1 },
								{ "black_steel_block", "Black Steel Block", "colorblocks_black_block.png", 
								{"default:steelblock", "dye:black"} , 1 },
								{ "cyan_steel_block", "Cyan Steel Block", "colorblocks_cyan_block.png", 
								{"default:steelblock", "dye:cyan"} , 1 },
								{ "dkgreen_steel_block", "Dark Green Steel Block", "colorblocks_dark_green_block.png", 
								{"default:steelblock", "dye:dark_green"} , 1 },
								{ "green_steel_block", "Green Steel Block", "colorblocks_green_block.png", 
								{"default:steelblock", "dye:green"} , 1 },
								{ "yellow_steel_block", "Yellow Steel Block", "colorblocks_yellow_block.png", 
								{"default:steelblock", "dye:yellow"} , 1 },
								{ "brown_steel_block", "Brown Steel Block", "colorblocks_brown_block.png", 
								{"default:steelblock", "dye:brown"} , 1 },
								{ "orange_steel_block", "Orange Steel Block", "colorblocks_orange_block.png", 
								{"default:steelblock", "dye:orange"} , 1 },
								{ "magenta_steel_block", "Magenta Steel Block", "colorblocks_magenta_block.png", 
								{"default:steelblock", "dye:magenta"} , 1 },

								{ "kahki_steel_bblock", "Kahki Steel Block (Bolt)", "colorblocks_kahki_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:green", "dye:grey"}, 2 },
								{ "blue_steel_bblock", "Blue Steel Block (Bolt)", "colorblocks_blue_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:blue"}, 2 },
								{ "red_steel_bblock", "Red Steel Block (Bolt)", "colorblocks_red_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:red"}, 2 },
								{ "white_steel_bblock", "White Steel Block (Bolt)", "colorblocks_white_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:white"}, 2 },
								{ "grey_steel_bblock", "Grey Steel Block (Bolt)", "colorblocks_grey_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:grey"}, 2 } ,
								{ "dkgrey_steel_bblock", "Dark Grey Steel Block (Bolt)", "colorblocks_dark_grey_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:dark_grey"}, 2 },
								{ "black_steel_bblock", "Black Steel Block (Bolt)", "colorblocks_black_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:black"} , 2 },
								{ "cyan_steel_bblock", "Cyan Steel Block (Bolt)", "colorblocks_cyan_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:cyan"} , 2 },
								{ "dkgreen_steel_bblock", "Dark Green Steel Block (Bolt)", "colorblocks_dark_green_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:dark_green"} , 2 },
								{ "green_steel_bblock", "Green Steel Block (Bolt)", "colorblocks_green_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:green"} , 2 },
								{ "yellow_steel_bblock", "Yellow Steel Block (Bolt)", "colorblocks_yellow_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:yellow"} , 2 },
								{ "brown_steel_bblock", "Brown Steel Block (Bolt)", "colorblocks_brown_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:brown"} , 2 },
								{ "orange_steel_bblock", "Orange Steel Block (Bolt)", "colorblocks_orange_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:orange"} , 2 },
								{ "magenta_steel_bblock", "Magenta Steel Block (Bolt)", "colorblocks_magenta_bblock.png", 
								{"default:steelblock", "default:steelblock", "dye:magenta"} , 2 },


			}

-- note if we have moreblocks available
local hasMoreBlocks = minetest.get_modpath("moreblocks")

-- loop over all items and register
for i = 1, #items do

  -- register block
	minetest.register_node(":" .. namespace .. ":" .. items[i][1], {
		description = items[i][2],
		tiles = { items[i][3] },
		is_ground_content = false,
		groups = {cracky=1, level=2},
		sounds = default.node_sound_stone_defaults()
	})

  -- register crafting
	minetest.register_craft({
		type = "shapeless",
		output = namespace .. ":" .. items[i][1] .. " " .. items[i][5],
		recipe = items[i][4]
	})

  -- register if moreblocks is enabled.
	if hasMoreBlocks then
		stairsplus:register_all(namespace, items[i][1], namespace .. ":" .. items[i][1], {
			description = items[i][2],
			groups= { cracky=1, not_in_creative_inventory=1 },
			tiles= { items[i][3] },
		})
	end

-- End item loop.
end

if minetest.setting_getbool("log_mods") then
print(("[ColorBlocks] Loaded in %f seconds"):format(os.clock() - load_start))
end

