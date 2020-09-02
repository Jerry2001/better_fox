#Adds cool-down time before a fox could swap armor with an armor stand again
#If there are no values in the fox_board for a fox yet, adds "sneak" tag to the fox and initialize the score of 0
#If the score > 0, remove the "sneaky tag" and reduce the score by 1 every second 

schedule function better_fox:tagarmorcooldown 1s
execute as @e[type= fox, nbt=!{Trusted:[]}] at @s unless score @s fox_board matches 0..5 run tag @s add sneaky
execute as @e[type= fox, nbt=!{Trusted:[]}] at @s unless score @s fox_board matches 0..5 run scoreboard players set @s fox_board 0
execute as @e[type= fox, nbt=!{Trusted:[]}] at @s if score @s fox_board matches 0 run tag @s add sneaky
execute as @e[type=fox, nbt=!{Trusted:[]}] if score @s fox_board matches 1..5 run tag @s remove sneaky
execute as @e[type = fox, nbt=!{Trusted:[]}] if score @s fox_board matches 1..5 run scoreboard players operation @s fox_board -= one fox_board