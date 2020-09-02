#Gives the trusted fox the armor drop chance of 100% and make it unable to pick up loot
#Makes armor stands have arms

execute as @e[type= fox, nbt=!{Trusted:[]}] at @s run data merge entity @s {ArmorDropChances:[2.0f, 2.0f, 2.0f, 2.0f], CanPickUpLoot:0b}
execute as @e[type=minecraft:armor_stand] run data merge entity @s {ShowArms:true}