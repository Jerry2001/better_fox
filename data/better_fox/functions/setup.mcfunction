scoreboard objectives add fox_board dummy "Fox Board"
scoreboard objectives setdisplay sidebar fox_board
scoreboard players set one fox_board 1
execute as @e[type=fox, nbt=!{Trusted:[]}] unless score @s fox_board matches 0..5 run scoreboard players set @s fox_board 0
function better_fox:getarmor
function better_fox:gettotem
function better_fox:tagarmorcooldown
function better_fox:regeneration
#teleport 
#drop percent