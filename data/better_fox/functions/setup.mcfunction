scoreboard objectives add fox_board dummy "Fox Board"
scoreboard objectives setdisplay sidebar fox_board
scoreboard players set one fox_board 1
execute as @e[type=fox, nbt=!{Trusted:[]}] at @s run scoreboard players set @s fox_board 0
#if score matches 0..3
#pick up totem
#teleport 
#regeneration