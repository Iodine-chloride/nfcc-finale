# Stopping the game
scoreboard players set @a MWKillCount 0
scoreboard players set @a MWDeathCount 0
scoreboard players set BRIDGE_RED data 0
scoreboard players set BRIDGE_BLUE data 0
tag @a remove first
tag @a remove second

# Setting bossbars
bossbar set minecraft:welcome players @a
bossbar set minecraft:bridge_duels players

# clone 7441 200 7473 7503 229 7501 2482 183 2498 replace
clone 8500 199 8500 8621 237 8548 3420 171 3472 replace
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set GAME tick_elapsed 0
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a ready 0
gamemode spectator @a[tag=!spec]
kill @e[type=item]
team leave @a
stopsound @a
clear @a

tag @a remove first
tag @a remove second

execute if score EVENT_STARTED data matches 1 run bossbar set minecraft:welcome players
execute if score EVENT_STARTED data matches 1 run bossbar set minecraft:welcome_event players @a
execute if score EVENT_STARTED data matches 1 run function hall:lobbies/final_return