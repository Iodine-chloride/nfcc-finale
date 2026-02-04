execute if score GAME tick_elapsed matches 6000 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 6000 run tellraw @a ["[⌚] ",{"text":"若没有队伍获胜，游戏将在","color":"yellow"},{"text":"15","color":"green","bold":true},{"text":"分钟后结束！","color":"yellow"}]

execute if score GAME tick_elapsed matches 12000 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 12000 run tellraw @a ["[⌚] ",{"text":"若没有队伍获胜，游戏将在","color":"yellow"},{"text":"10","color":"green","bold":true},{"text":"分钟后结束！","color":"yellow"}]

execute if score GAME tick_elapsed matches 18000 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score GAME tick_elapsed matches 18000 run tellraw @a ["[⌚] ",{"text":"若没有队伍获胜，游戏将在","color":"yellow"},{"text":"5","color":"green","bold":true},{"text":"分钟后结束！","color":"yellow"}]

execute if score GAME tick_elapsed matches 24000 run function game:general/bingo/draw
