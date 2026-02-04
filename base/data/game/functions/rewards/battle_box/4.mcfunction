datapack enable "file/battle_box"
tp @a 1 70 204
spawnpoint @a 1 70 204
title @a title {"text":"你现在的大厅：","color":"yellow"}
title @a subtitle {"text":"Battle Box","color":"green","bold":true}
advancement revoke @a only game:enter_battle_box
scoreboard players set @a ready 0
scoreboard players set @a map_selector 0
scoreboard players set CHOSEN_MAP data 104

# Showing prompts
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a {"text":"                     战盒(Mega!)","bold":true,"color":"yellow"}
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"四个队伍间的正面对决，活到最后的一方获胜。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"地图分布着多个羊毛区域，填充为自己的颜色可获得分数和增益。","color":"white"}]
tellraw @a [{"text":" ● ","color":"yellow"},{"text":"你不能在该游戏中复活，祝你好运！","color":"white"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

function game:levels/levels_reset
time set midnight