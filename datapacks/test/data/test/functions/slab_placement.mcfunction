# "Fake" block item handling. For slab placement.

# setstate ~ ~ ~ vert custom up

# double slabs
	# if it's a top slab and we're looking up at it
	execute if block ~ ~ ~ test:slab[type=top] run execute if entity @s[x_rotation=-90..-45] run setstate ~ ~ ~ type custom double

	# if it's a bottom slab and we're looking down at it
	execute if block ~ ~ ~ test:slab[type=bottom] run execute if entity @s[x_rotation=45..90] run setstate ~ ~ ~ type custom double

# looking straight-up
	# facing north, place on south side
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=-45..0] run execute if entity @s[y_rotation=135..-135] run setblock ~ ~ ~1 test:slab[type=top] keep

	# S, place N
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=-45..0] run execute if entity @s[y_rotation=-45..45] run setblock ~ ~ ~-1 test:slab[type=top] keep
	
	# E, place W
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=-45..0] run execute if entity @s[y_rotation=-135..-45] run setblock ~-1 ~ ~ test:slab[type=top] keep

	# W, place E
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=-45..0] run execute if entity @s[y_rotation=45..135] run setblock ~1 ~ ~ test:slab[type=top] keep

# looking straight-down
	# facing north, place on south side
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=0..45] run execute if entity @s[y_rotation=135..-135] run setblock ~ ~ ~1 test:slab[type=bottom] keep

	# S, place N
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=0..45] run execute if entity @s[y_rotation=-45..45] run setblock ~ ~ ~-1 test:slab[type=bottom] keep
	
	# E, place W
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=0..45] run execute if entity @s[y_rotation=-135..-45] run setblock ~-1 ~ ~ test:slab[type=bottom] keep

	# W, place E
	execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=0..45] run execute if entity @s[y_rotation=45..135] run setblock ~1 ~ ~ test:slab[type=bottom] keep

# looking up
execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=-90..-45] run setblock ~ ~-1 ~ test:slab[type=top] keep

# looking down
execute unless block ~ ~ ~ test:slab run execute if entity @s[x_rotation=45..90] run setblock ~ ~1 ~ test:slab[type=bottom] keep
