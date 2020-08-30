schedule function better_fox:tagarmorcooldown 1s
execute as @e[type= fox, nbt=!{Trusted:[]}] at @s if score @s fox_board matches 0 run tag @s add sneaky
execute as @e[type=fox, nbt=!{Trusted:[]}] if score @s fox_board matches 1..5 run tag @s remove sneaky
execute as @e[type = fox, nbt=!{Trusted:[]}] if score @s fox_board matches 1..5 run scoreboard players operation @s fox_board -= one fox_board