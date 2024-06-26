#Scoreboard create objectives
scoreboard objectives add erase_floor dummy
scoreboard objectives add destroy_delay dummy
scoreboard objectives add map_index dummy
scoreboard objectives add start_game dummy
scoreboard objectives add start_button dummy
scoreboard objectives add timer_start dummy
scoreboard objectives add death deathCount
scoreboard objectives add number_player_ingame dummy
scoreboard objectives add current_death_player dummy
scoreboard objectives add const_one dummy
scoreboard objectives add map_id dummy
scoreboard objectives add map_rnd dummy

#Gamerule
gamerule commandBlockOutput false
gamerule doInsomnia false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule disableRaids false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule spawnRadius 0
gamerule doImmediateRespawn true
gamerule spectatorsGenerateChunks true
gamerule commandModificationBlockLimit 999999999

time set noon 

#Reset ALL
gamemode adventure @a
scoreboard players set @a start_button 0
scoreboard players set @a erase_floor 0
scoreboard players set @a timer_start 0
scoreboard players set @a death 0
scoreboard players set @a current_death_player 0
scoreboard players set @a number_player_ingame 0
scoreboard players set @a map_id 0
scoreboard players set @a map_index 0
scoreboard players set @a map_rdn 1
gamemode adventure @a
team add alive_player
team add death_player
team modify alive_player color green
team modify death_player color red
team empty alive_player
team empty death_player
team modify alive_player friendlyFire false
team modify death_player friendlyFire false

setworldspawn 8 -60 8
teleport @a 8 -58 8 180 0
tellraw @a ["",{"text":"[Runnonstone V2.4] ","color":"blue"},{"text":"Loaded","color":"green"},{"text":" made by BugPig_","color":"gray"}]
