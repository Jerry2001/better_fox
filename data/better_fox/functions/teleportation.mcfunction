#If the fox has the name tag of "on duty", is not leaded and there are no players in a radius of 13 blocks
#, teleport it to the nearest player  

schedule function better_fox:teleportation 1t
execute as @e[type= fox, nbt={CustomName:'{"text":"on duty"}'}, nbt=!{Trusted:[]}] at @s unless data entity @s Leash unless entity @e[type=minecraft:player, distance=0..13] run tp @p