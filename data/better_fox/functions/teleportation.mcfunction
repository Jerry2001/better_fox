schedule function better_fox:teleportation 1t
execute as @e[type= fox, nbt={CustomName:'{"text":"on duty"}'}, nbt=!{Trusted:[]}] at @s unless data entity @s Leash unless entity @e[type=minecraft:player, distance=0..13] run tp @p