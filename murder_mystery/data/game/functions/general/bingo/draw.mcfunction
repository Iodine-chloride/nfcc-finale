function game:general/bingo/calc_score
function game:itemlist/acquire/clear_all

execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5

title @a title [{"text":"时间到！","color":"red","bold":true}]
title @a subtitle [{"text":"没有任何队伍获胜... ","color":"yellow","bold":true},{"text":":(","color":"red"}]
tellraw @a[tag=!spec] [{"text":"+50","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（完赛奖励）","color":"gold"}]
scoreboard players add @a[tag=!spec] round_score_mb 50

tellraw @a ["[",{"text":"⚔","color":"aqua"},"] ",{"text":"本局游戏已结束，","color":"yellow","bold":true},{"text":"10","color":"green","bold":true},{"text":"秒后你将被传送至开始大厅！","color":"yellow","bold":true}]

schedule function game:general/reset_game 10s