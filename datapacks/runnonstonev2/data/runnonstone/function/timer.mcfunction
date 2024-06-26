execute as @a[team=alive_player] if score @s erase_floor matches 0 run scoreboard players add @s timer_start 1

execute as @a[team=alive_player] if score @s timer_start matches 1 run tellraw @s ["",{"text":"Teleportation in ","color":"green"},{"text":"3 seconds...","color":"red"}]
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 1 run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~
execute as @a[team=alive_player] as @s run execute if score @s timer_start matches 1 run scoreboard players operation @s map_index = @s map_id

#teleport in function of map
#Jungle
execute as @a[team=alive_player] if score @s map_index matches 0 run execute if score @s timer_start matches 60 run teleport @a 100 20 100 90 0
execute as @a[team=alive_player] if score @s map_index matches 0 run execute if score @s timer_start matches 60 run gamemode spectator @a
execute as @a[team=alive_player] if score @s map_index matches 0 run execute if score @s timer_start matches 120 run clone 169 -2 81 131 24 119 81 -2 81
execute as @a[team=alive_player] if score @s map_index matches 0 run execute if score @s timer_start matches 200 run teleport @a 100 20 100 90 0
execute as @a[team=alive_player] if score @s map_index matches 0 run execute if score @s timer_start matches 200 run gamemode adventure @a

#Castle
execute as @a[team=alive_player] if score @s map_index matches 1 run execute if score @s timer_start matches 60 run teleport @a 100 10 235 90 0
execute as @a[team=alive_player] if score @s map_index matches 1 run execute if score @s timer_start matches 60 run gamemode spectator @a
execute as @a[team=alive_player] if score @s map_index matches 1 run execute if score @s timer_start matches 120 run clone 166 -3 220 136 16 250 85 -3 220
execute as @a[team=alive_player] if score @s map_index matches 1 run execute if score @s timer_start matches 200 run teleport @a 100 10 235 90 0
execute as @a[team=alive_player] if score @s map_index matches 1 run execute if score @s timer_start matches 200 run gamemode adventure @a

#Pyramid
execute as @a[team=alive_player] if score @s map_index matches 2 run execute if score @s timer_start matches 60 run teleport @a 100 14 375 90 0
execute as @a[team=alive_player] if score @s map_index matches 2 run execute if score @s timer_start matches 60 run gamemode spectator @a
execute as @a[team=alive_player] if score @s map_index matches 2 run execute if score @s timer_start matches 120 run clone 181 -3 351 133 26 399 76 -3 351
execute as @a[team=alive_player] if score @s map_index matches 2 run execute if score @s timer_start matches 200 run teleport @a 100 14 375 90 0
execute as @a[team=alive_player] if score @s map_index matches 2 run execute if score @s timer_start matches 200 run gamemode adventure @a

execute as @a[team=alive_player] if score @s timer_start matches 200 run tellraw @s ["",{"text":"Game starting in ","color":"green"},{"text":"5 seconds...","color":"red"}]

execute as @a[team=alive_player] if score @s timer_start matches 220 run tellraw @s {"text":"4 seconds...","color":"gray"}
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 220 run playsound minecraft:block.tripwire.click_on block @s ~ ~ ~ 1

execute as @a[team=alive_player] if score @s timer_start matches 240 run tellraw @s {"text":"3 seconds...","color":"gray"}
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 240 run playsound minecraft:block.tripwire.click_on block @s ~ ~ ~ 1

execute as @a[team=alive_player] if score @s timer_start matches 260 run tellraw @s {"text":"2 seconds...","color":"gray"}
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 260 run playsound minecraft:block.tripwire.click_on block @s ~ ~ ~ 1

execute as @a[team=alive_player] if score @s timer_start matches 280 run tellraw @s {"text":"1 seconds...","color":"gray"}
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 280 run playsound minecraft:block.tripwire.click_on block @s ~ ~ ~ 1

execute as @a[team=alive_player] if score @s timer_start matches 300 run tellraw @s {"text":"GO !","bold":true,"color":"green"}
execute as @a[team=alive_player] at @s run execute if score @s timer_start matches 300 run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1

execute as @a[team=alive_player] if score @s timer_start matches 301 run scoreboard players set @a erase_floor 1
