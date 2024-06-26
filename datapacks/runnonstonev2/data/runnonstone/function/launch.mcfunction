#Reset variables
scoreboard players set @a start_button 0
scoreboard players set @a erase_floor 0
scoreboard players set @a timer_start 0
scoreboard players set @a death 0
scoreboard players set @a current_death_player 0
scoreboard players set @a number_player_ingame 0
scoreboard players set @a const_one 1
gamemode adventure @a
team empty alive_player
team empty death_player

#Player join team
team join alive_player @a

#Set number of alive player in party (to detect end game)
execute as @a[team=alive_player] run scoreboard players add @a number_player_ingame 1
execute as @a[team=alive_player] run scoreboard players operation @s number_player_ingame -= @s const_one
