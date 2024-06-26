#Armor Stand Execute Erase Floor
#Spawn armorstand arround player
execute at @a[scores={erase_floor=1},team=alive_player] run summon minecraft:marker ~0.3 ~-2 ~ {Tags:["eraser"]}
execute at @a[scores={erase_floor=1},team=alive_player] run summon minecraft:marker ~-0.3 ~-2 ~ {Tags:["eraser"]}
execute at @a[scores={erase_floor=1},team=alive_player] run summon minecraft:marker ~ ~-2 ~0.3 {Tags:["eraser"]}
execute at @a[scores={erase_floor=1},team=alive_player] run summon minecraft:marker ~ ~-2 ~-0.3 {Tags:["eraser"]}

#Armor stand execute command to erase floor and kill self
execute as @e[type=minecraft:marker,tag=eraser] run scoreboard players add @s destroy_delay 1
execute at @e[type=minecraft:marker,tag=eraser,scores={destroy_delay=10}] if block ~ ~1.99 ~ minecraft:andesite run setblock ~ ~1.99 ~ air 
execute as @e[type=minecraft:marker,tag=eraser,scores={destroy_delay=10}] run kill @s


#Check Start button on any player
execute as @a[scores={start_button=1}] run function runnonstone:launch

#ROUTINE Check death
function runnonstone:death

#ROUTINE Timer for player (tp/message/sound)
function runnonstone:timer

#Random map
execute as @a if score @s map_rnd matches 1 run execute if score @s map_id matches 0..2 run scoreboard players add @s map_id 1
#important de laisser @a pour syncro la rotation de map pour tous les joueurs tous les 3 ticks
execute as @a if score @s map_rnd matches 1 run execute if score @s map_id matches 3 run scoreboard players set @a map_id 0

#DEFINE constant
scoreboard players set @a const_one 1


