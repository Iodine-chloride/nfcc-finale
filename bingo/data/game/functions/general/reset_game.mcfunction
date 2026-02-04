# Multiplying scores
execute if score PLAYED_GAMES data matches 0 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_10 data
execute if score PLAYED_GAMES data matches 1 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_12 data
execute if score PLAYED_GAMES data matches 2 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_14 data
execute if score PLAYED_GAMES data matches 3 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_16 data
execute if score PLAYED_GAMES data matches 4 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_18 data
execute if score PLAYED_GAMES data matches 5 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_20 data
scoreboard players operation @a[tag=!spec] round_score_mb /= CONST_10 data

# Announcing scores
execute as @a[tag=!spec] run scoreboard players operation @s total_score_hub += @s round_score_mb
execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Ingame
scoreboard players set @a bingo_player 0
function game:itemlist/acquire/clear_all
worldborder set 20000
execute in multi:bingo run tp @e[tag=bingo_table_entry] 0 0 0
execute in multi:bingo run tp @e[tag=bingo_table_background] 0 0 0

# Teleporting to waiting room
execute in multi:bingo run tp @a -17 110 33 facing -33 112 33

# Stopping the game
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a round_score_mb 0
scoreboard players set @a ready 0
scoreboard players set @a data 0
gamemode adventure @a[tag=!spec]
effect clear @a
time set noon
weather clear
team leave @a[team=!spec]
stopsound @a
clear @a

# Disabling gamerules for survival world
gamerule randomTickSpeed 0
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doFireTick false
gamerule keepInventory true
gamerule mobGriefing false

# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"Bingo!","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_bingo","objective":"data"},"color":"green"},{"text":"/1","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_bingo data matches 1.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"Bingo!","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_bingo data matches 1.. run schedule function game:general/return_hall 10s