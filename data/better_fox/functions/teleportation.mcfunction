#If the fox is not leaded and there are no players in a radius of 13 blocks
#, teleport it to the nearest player  
#If teleportwithouttag = 1, the name tag "on duty" is also needed for teleport

#schedule function better_fox:teleportation 1t
execute if score teleportwithouttag fox_control matches 0 as @e[type= fox, nbt={CustomName:'{"text":"on duty"}'}, nbt=!{Trusted:[]}] at @s unless data entity @s Leash unless entity @e[type=minecraft:player, distance=0..13] run tp @p
execute if score teleportwithouttag fox_control matches 1 as @e[type= fox, nbt=!{Trusted:[]}] at @s unless data entity @s Leash unless entity @e[type=minecraft:player, distance=0..13] run tp @p