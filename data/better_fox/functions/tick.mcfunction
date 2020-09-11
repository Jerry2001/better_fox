#Gives the trusted fox the armor drop chance of 100% and make it unable to pick up loot
#Makes armor stands have arms
#If the score foxinfo of a player equal to one, runs getfoxinfo.mcfunction and set their score back to 0

execute as @e[type= fox, nbt=!{Trusted:[]}] at @s run data merge entity @s {ArmorDropChances:[2.0f, 2.0f, 2.0f, 2.0f], CanPickUpLoot:0b}
execute as @e[type=minecraft:armor_stand] run data merge entity @s {ShowArms:true}
execute as @e[type=minecraft:player] if score @s foxinfo matches 1 run function better_fox:getfoxinfo
execute as @e[type=minecraft:player] if score @s foxinfo matches 1 run scoreboard players set @s foxinfo 0
execute as @e[type=minecraft:player] if score @s foxinfo matches 0 run scoreboard players enable @s foxinfo