execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 0 if score INGAME data matches 0 run function game:levels/levels_set
execute as @a[scores={relog=1..}] run title @s title ["-[ ",{"text":"NFC ","color":"yellow"},{"text":"Minigame ","color":"green"},{"text":"Hub","color":"aqua"}," ]-"]
execute as @a[scores={relog=1..}] run title @s subtitle {"text":"Have a good time!","color":"white"}
execute as @a[scores={relog=1..}] run tellraw @s ["[✔] ",{"text":"Current minigame hub version: v0.6","color":"gray","italic":true}]
execute as @a[scores={relog=1..}] run tellraw @s ["[⭐] ",{"text":"欢迎来到","color":"yellow","bold":true},{"text":" NFC ","color":"green","bold":true},{"text":"小游戏大厅！","color":"yellow","bold":true}]
execute as @a[scores={relog=1..}] run tellraw @s [{"text":"Map Credits: ","color":"yellow"},{"text":"@EnrazeGame","italic":true, "color":"gray"}]

execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 0 in overworld run spawnpoint @s -1985 11 -40
execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 0 in overworld run tp @s -1985 11 -40
execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 0 run scoreboard players enable @a map_selector

execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 1 run tellraw @s {"text":"由于联赛已经开始，你现在是旁观者，请耐心等待下一轮小游戏开始...","color":"gray"}
execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 1 run tp @s @r[tag=!spec,limit=1]
execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 1 run team join spec @s
execute as @a[scores={relog=1..}] if score EVENT_STARTED data matches 1 run gamemode spectator @s
execute as @a[scores={relog=1..}] run scoreboard players set @s relog 0
