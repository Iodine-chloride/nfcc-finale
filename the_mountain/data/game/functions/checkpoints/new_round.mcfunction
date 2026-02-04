# Personal and global announcements.
tellraw @a ["[✈] ",{"selector":"@s","color":"aqua","bold":true},{"text":" 已经完成了第","color":"yellow"},{"score":{"name":"@s","objective":"mountain_round"},"color":"green","bold":true},{"text":"圈竞速，单圈用时","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"},{"text":"！","color":"yellow"}]
title @s title [{"text":"Round ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"mountain_round"},"color":"green","bold":true},{"text":"/3!"}]
title @s subtitle [{"text":"本圈用时: ","color":"yellow"},{"score":{"name":"@s","objective": "min_elapsed"},"color":"aqua"},{"text":"'","color":"aqua"},{"score":{"name":"@s","objective": "sec_elapsed"},"color":"aqua"},{"text":"''","color":"aqua"},{"score":{"name":"@s","objective": "millisec_elapsed"},"color":"aqua"}]

# Score rewards.
tellraw @s[scores={mountain_round=1},tag=!finished] [{"text":"+100","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（底分：完成第一圈）","color":"gold"}]
tellraw @s[scores={mountain_round=2},tag=!finished] [{"text":"+100","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（底分：完成第二圈）","color":"gold"}]
tellraw @s[scores={mountain_round=3},tag=!finished] [{"text":"+100","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（底分：完成第三圈）","color":"gold"}]
scoreboard players add @s[scores={mountain_round=1},tag=!finished] round_score_mb 100
scoreboard players add @s[scores={mountain_round=2},tag=!finished] round_score_mb 100
scoreboard players add @s[scores={mountain_round=3},tag=!finished] round_score_mb 100

# For extra scores.
execute as @s[scores={mountain_round=1}] run scoreboard players operation @s round_score_mb += arFirstRound data
execute as @s[scores={mountain_round=2}] run scoreboard players operation @s round_score_mb += arSecondRound data
execute as @s[scores={mountain_round=3}] run scoreboard players operation @s round_score_mb += arThirdRound data

tellraw @s[scores={mountain_round=1},tag=!finished] [{"text":"+","color":"green"},{"score":{"name":"arFirstRound","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（排名分：本圈第","color":"gold"},{"score":{"name":"arFirstRoundPos","objective":"data"},"color":"green","bold":true},{"text":"名）","color":"gold"}]
tellraw @s[scores={mountain_round=2},tag=!finished] [{"text":"+","color":"green"},{"score":{"name":"arSecondRound","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（排名分：本圈第","color":"gold"},{"score":{"name":"arSecondRoundPos","objective":"data"},"color":"green","bold":true},{"text":"名）","color":"gold"}]
tellraw @s[scores={mountain_round=3},tag=!finished] [{"text":"+","color":"green"},{"score":{"name":"arThirdRound","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（排名分：本圈第","color":"gold"},{"score":{"name":"arThirdRoundPos","objective":"data"},"color":"green","bold":true},{"text":"名）","color":"gold"}]

execute as @s[scores={mountain_round=1}] run scoreboard players remove arFirstRound data 7
execute as @s[scores={mountain_round=2}] run scoreboard players remove arSecondRound data 13
execute as @s[scores={mountain_round=3}] run scoreboard players remove arThirdRound data 19

execute as @s[scores={mountain_round=1}] run scoreboard players add arFirstRoundPos data 1
execute as @s[scores={mountain_round=2}] run scoreboard players add arSecondRoundPos data 1
execute as @s[scores={mountain_round=3}] run scoreboard players add arThirdRoundPos data 1


# Checks if a player has finished all 3 rounds.
execute as @s[scores={mountain_round=3..},tag=!finished] run function game:checkpoints/finished

# Resets single-round timer.
scoreboard players set @s tick_elapsed 0
