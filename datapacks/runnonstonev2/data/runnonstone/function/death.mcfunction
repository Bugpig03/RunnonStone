execute as @a[scores={death=1}] run gamemode spectator @s
execute as @a[scores={death=1}] run team join death_player @s
execute as @a[scores={death=1}] run teleport @s @r[team=alive_player]
#execute as @a[scores={death=1}] run scoreboard players set @s erase_floor 0
scoreboard players set @a[scores={death=1}] erase_floor 0
execute as @a[scores={death=1}] run scoreboard players add @a current_death_player 1
execute as @a[scores={death=1}] at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1

#TEST END GAME
execute as @a[scores={death=1}] run execute if score @s current_death_player >= @s number_player_ingame run teleport @a 8 -58 8 180 0
execute as @a[scores={death=1}] run execute if score @s current_death_player >= @s number_player_ingame run scoreboard players set @a map_rdn 0
execute as @a[scores={death=1}] run execute if score @s current_death_player >= @s number_player_ingame run gamemode adventure @a
execute as @a[scores={death=1}] run execute if score @s current_death_player >= @s number_player_ingame run team join alive_player @a
execute as @a[scores={death=1}] run execute if score @s current_death_player >= @s number_player_ingame run tellraw @a ["",{"text":"Game over !","bold":true,"color":"red"},{"text":" -->","color":"white"},{"text":" Last player win the game !","color":"green"}]
execute as @a[scores={death=1}] at @s run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1

execute as @a[scores={death=1}] run scoreboard players reset @s death