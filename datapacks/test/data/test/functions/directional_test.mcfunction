# Experiments with directional block placement for Frontrider.
# facing = north, south, east, or west
# vert = horizontal, up, or down
# [x_rotation=n..m] -90: straight up. 0: horizon. +90: straight down.
# [y_rotation=n..m] 0: due south, 90: due east, -90: west, 180: north

execute if entity @s[y_rotation=135..-135] run setstate ~ ~ ~ facing custom north
execute if entity @s[y_rotation=-45..45] run setstate ~ ~ ~ facing custom south
execute if entity @s[y_rotation=-135..-45] run setstate ~ ~ ~ facing custom east
execute if entity @s[y_rotation=45..135] run setstate ~ ~ ~ facing custom west

execute if entity @s[x_rotation=-45..45] run setstate ~ ~ ~ vert custom horizontal
execute if entity @s[x_rotation=-90..-45] run setstate ~ ~ ~ vert custom up
execute if entity @s[x_rotation=45..90] run setstate ~ ~ ~ vert custom down
