#Check if there is a trusted fox in a distance of from 0 to 2 blocks of a dropped totem. 
#If there is, spawns an unpickable barrier
#Adds tag clone to the barrier
#Set the barrier the same item as the item in the off-hand of the fox
#Set the off-hand's item of the fox the same as the original totem
#Set the original totem the same as clone entity
#Delete clone entity and barrier entity	

schedule function better_fox:gettotem 2s
execute as @e[type= minecraft:item, nbt={Item:{id: "minecraft:totem_of_undying"}}] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier", Count:1b}, PickupDelay:32767}
tag @e[type=item,nbt={Item:{id:"minecraft:barrier"}}] add clone
execute as @e[type= item, sort= nearest, nbt={Item:{id: "minecraft:barrier"}}] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s Item merge from entity @e[type= fox, limit=1, sort=nearest, distance=0..2] HandItems[1]
execute as @e[type= minecraft:item, nbt={Item:{id: "minecraft:totem_of_undying"}}] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, limit=1, sort=nearest, distance=0..2] HandItems[1] set from entity @s Item
execute as @e[type= minecraft:item, nbt={Item:{id: "minecraft:totem_of_undying"}}] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s Item set from entity @e[type= item, sort= nearest, tag= clone, limit=1] Item
execute as @e[type= minecraft:item, nbt={Item:{id: "minecraft:totem_of_undying"}}, tag = clone] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run kill @s
kill @e[type=item, nbt={Item:{id:"minecraft:barrier"}}]