tag @e[type=fox, nbt=!{Trusted:[]}, tag=!indexed, limit=1, sort= nearest] add indexing
scoreboard players operation @e[tag=indexing] indexing = next indexing
execute if entity @e[tag=indexing] run scoreboard players operation next indexing += one fox_board
tag @e[tag=indexing] add indexed
tag @e remove indexing