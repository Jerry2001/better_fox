#Gives all trusted fox 1 heart every 20 seconds

schedule function better_fox:regeneration 20s

execute as @e[type=fox, nbt=!{Trusted:[]}] run effect give @s minecraft:regeneration 2 1 true
