#/summon fox ~ ~ ~ {ArmorItems:[{id:iron_boots, Count:1}, {id:iron_leggings, Count:1}, {id:iron_chestplate, Count:1}, {id:iron_helmet, Count:1}]}
#/tp @e[type= fox, nbt=!{Trusted:[]}, limit = 1] Asheder

schedule function better_fox:getarmor 1s

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set from entity @e[type= fox, limit=1, sort=nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[0]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, sort= nearest, limit=1, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[0] set from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[0]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s ArmorItems[0] set from entity @s HandItems[1] 

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set from entity @e[type= fox, limit=1, sort=nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[1]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, sort= nearest, limit=1, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[1] set from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[1]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s ArmorItems[1] set from entity @s HandItems[1]

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set from entity @e[type= fox, limit=1, sort=nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[2]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, sort= nearest, limit=1, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[2] set from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[2]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s ArmorItems[2] set from entity @s HandItems[1]

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set from entity @e[type= fox, limit=1, sort=nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[3]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, sort= nearest, limit=1, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] ArmorItems[3] set from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] ArmorItems[3]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set from entity @e[type=fox, limit=1, sort= nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] HandItems[0]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @e[type= fox, sort= nearest, limit=1, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] HandItems[0] set from entity @e[type= minecraft:armor_stand, sort= nearest, limit=1] HandItems[0]
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[0] set from entity @s HandItems[1]

execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run scoreboard players set @e[type=fox, limit=1, sort= nearest, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] fox_board 5
execute as @e[type= minecraft:armor_stand] at @s if entity @e[type=fox, distance=0..2, nbt=!{Trusted:[]}, tag = sneaky] run data modify entity @s HandItems[1] set value {}