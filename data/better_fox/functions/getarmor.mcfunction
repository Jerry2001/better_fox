#data merge entity @e[type=fox, limit= 1, sort=nearest, nbt=!{Trusted:[]}] {ArmorItems:[{id:iron_boots, Count:1}, {id:iron_leggings, Count:1}, {id:iron_chestplate, Count:1}, {id:iron_helmet, Count:1}]}
#data merge entity @e[type=fox, limit= 1, sort=nearest, nbt=!{Trusted:[]}] {ArmorItems:[{id:barrier, Count:1}, {id:barrier, Count:1}, {id:barrier, Count:1}, {id:barrier, Count:1}]}
#execute as @e[type= minecraft:armor_stand] at @s if entity @e[type= minecraft:fox, distance=0..2] run tag @s add haveFox
#execute as @e[type= fox, tag =! havefriend, nbt=!{Trusted:[]}] at @s if entity @e[type = minecraft:armor_stand, distance = 0..1] run data modify entity @s ArmorItems[0].id set from entity @e[type=minecraft:armor_stand, limit = 1, sort= nearest, distance = 0..1] 
#execute as @e[type= minecraft:armor_stand] as @s run data modify entity @e[type= fox, nbt=!{Trusted:[]}, limit = 1, sort= nearest] ArmorItems[0].id set from entity @s ArmorItems[0].id

#/summon fox ~ ~ ~ {ArmorItems:[{id:iron_boots, Count:1}, {id:iron_leggings, Count:1}, {id:iron_chestplate, Count:1}, {id:iron_helmet, Count:1}]}

execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s HandItems[0] merge from entity @e[type= fox, limit=1, sort=nearest] ArmorItems[0]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @e[type= fox, sort= nearest, limit=1] ArmorItems[0] merge from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[0]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s ArmorItems[0] set from entity @s HandItems[0] 

execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s HandItems[0] merge from entity @e[type= fox, limit=1, sort=nearest] ArmorItems[1]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @e[type= fox, sort= nearest, limit=1] ArmorItems[1] merge from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[1]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s ArmorItems[1] set from entity @s HandItems[0]

execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s HandItems[0] merge from entity @e[type= fox, limit=1, sort=nearest] ArmorItems[2]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @e[type= fox, sort= nearest, limit=1] ArmorItems[2] merge from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[2]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s ArmorItems[2] set from entity @s HandItems[0]

execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s HandItems[0] merge from entity @e[type= fox, limit=1, sort=nearest] ArmorItems[3]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @e[type= fox, sort= nearest, limit=1] ArmorItems[3] merge from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[3]
execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]

execute as @e[type= minecraft:armor_stand, limit=1, sort= nearest] as @s run data modify entity @s HandItems[0] set value {}