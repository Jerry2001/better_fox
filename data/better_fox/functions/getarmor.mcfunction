#Checks every armor stand whether there is a trusted fox in a distance from 0 to 2
#If the fox has the tag "sneaky", it would swap the armor stand armor with the fox armor 
#and swap the armor stand's left-hand item to the mouth slot of the fox
#The algorithm uses the armor stand's right-hand's slot as a temporary slot for swapping
#At the first chunk of code, the function attempts to swap the armor stand's boots and the fox boots.
#It first set the armor stand's right hand the same item as the fox boots
#Then it set the fox's boots the same as the armor stand's boots
#Finally it set the armor stand's left hand the same as the armor stand's right hand
#The same process goes for leggings, chest plate, helmet, and right hand
#After swapping all the item, the function adds a cooldown to the fox before the fox is able to swap armor again
#The function then delete the item in the right hand of the armor stand

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