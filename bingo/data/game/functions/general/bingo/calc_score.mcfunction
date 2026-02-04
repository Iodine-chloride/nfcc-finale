execute store result score bingo_item_score_red data if entity @e[tag=bingo_item,tag=red]
execute store result score bingo_item_score_blue data if entity @e[tag=bingo_item,tag=blue]
execute store result score bingo_item_score_green data if entity @e[tag=bingo_item,tag=green]
execute store result score bingo_item_score_yellow data if entity @e[tag=bingo_item,tag=yellow]

scoreboard players operation bingo_item_score_red data *= CONST_20 data
scoreboard players operation bingo_item_score_blue data *= CONST_20 data
scoreboard players operation bingo_item_score_green data *= CONST_20 data
scoreboard players operation bingo_item_score_yellow data *= CONST_20 data

scoreboard players operation @a[team=red,tag=!spec] round_score_mb += bingo_item_score_red data
scoreboard players operation @a[team=blue,tag=!spec] round_score_mb += bingo_item_score_blue data
scoreboard players operation @a[team=green,tag=!spec] round_score_mb += bingo_item_score_green data
scoreboard players operation @a[team=yellow,tag=!spec] round_score_mb += bingo_item_score_yellow data

tellraw @a[team=red,tag=!spec] [{"text":"+","color":"green"},{"score":{"name":"bingo_item_score_red","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（收集物品）","color":"gold"}]
tellraw @a[team=blue,tag=!spec] [{"text":"+","color":"green"},{"score":{"name":"bingo_item_score_blue","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（收集物品）","color":"gold"}]
tellraw @a[team=green,tag=!spec] [{"text":"+","color":"green"},{"score":{"name":"bingo_item_score_green","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（收集物品）","color":"gold"}]
tellraw @a[team=yellow,tag=!spec] [{"text":"+","color":"green"},{"score":{"name":"bingo_item_score_yellow","objective":"data"},"color":"green"},{"text":"⭐","color":"yellow"},{"text":"（收集物品）","color":"gold"}]