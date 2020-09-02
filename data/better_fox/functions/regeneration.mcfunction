#Gives all trusted fox 1 heart every 1 second

schedule function better_fox:regeneration 20s

execute as @e[type=fox, nbt=!{Trusted:[]}] run effect give @s minecraft:regeneration 2 1 true