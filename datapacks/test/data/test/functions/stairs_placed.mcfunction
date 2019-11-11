# Experiments with directional block placement for Frontrider.
# Crysthala hasn't figured this out yet

execute if entity @s[y_rotation=135..-135] run setstate ~ ~ ~ facing custom north

execute if entity @s[y_rotation=-45..45] run setstate ~ ~ ~ facing custom south

execute if entity @s[y_rotation=-135..-45] run setstate ~ ~ ~ facing custom east

execute if entity @s[y_rotation=45..135] run setstate ~ ~ ~ facing custom west
