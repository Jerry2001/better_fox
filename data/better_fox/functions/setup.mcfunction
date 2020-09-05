#Runs when the game is loaded or reloaded.
#Adds a dummy scoreboard named fox_board and initialize fox_board value of 0 if the score of a trusted fox is not in a range from 0 to 5
#Call to schedule the function getarmor, gettotem, tagarmorcooldown, regeneration and teleportation

scoreboard objectives add fox_board dummy "Fox Board"
#scoreboard objectives setdisplay sidebar fox_board
scoreboard objectives add fox_control dummy "Fox Control"
execute unless score teleportwithouttag fox_control matches 0..1 run scoreboard players set teleportwithouttag fox_control 0
scoreboard players set one fox_board 1
execute as @e[type=fox, nbt=!{Trusted:[]}] unless score @s fox_board matches 0..5 run scoreboard players set @s fox_board 0
function better_fox:getarmor
function better_fox:gettotem
function better_fox:tagarmorcooldown
function better_fox:regeneration
function better_fox:teleportation