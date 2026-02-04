$scoreboard players set WOOL_PAD_ID data $(wool_pad_id)

execute if score WOOL_PAD_ID data matches 1 run fill -5 12 208 -3 12 210 yellow_concrete
execute if score WOOL_PAD_ID data matches 2 run fill 6 12 199 8 12 197 yellow_concrete
execute if score WOOL_PAD_ID data matches 3 run fill 16 12 218 18 12 220 yellow_concrete
execute if score WOOL_PAD_ID data matches 4 run fill -15 12 187 -13 12 189 yellow_concrete

execute if score WOOL_PAD_ID data matches 1..2 as @a[team=yellow,gamemode=adventure] at @s run particle minecraft:heart ~ ~ ~ 0.5 1 0.5 0.1 20
execute if score WOOL_PAD_ID data matches 3..4 as @a[team=yellow,gamemode=adventure] at @s run particle minecraft:flame ~ ~ ~ 0.5 1 0.5 0.02 50

execute if score WOOL_PAD_ID data matches 1..2 run effect give @a[team=red,tag=!spec,gamemode=adventure] regeneration 15 0 true
execute if score WOOL_PAD_ID data matches 3..4 run effect give @a[team=red,tag=!spec,gamemode=adventure] strength 15 0 true

execute if score WOOL_PAD_ID data matches 1..2 run tellraw @a [{"text":"[🏆] "},{"text":"黄队","color":"gold","bold":true},{"text":"填充了一个羊毛区域，并获得了","color":"yellow"},{"text":"再生","color":"light_purple","bold":true},{"text":"增益！","color":"yellow"}]
execute if score WOOL_PAD_ID data matches 3..4 run tellraw @a [{"text":"[🏆] "},{"text":"黄队","color":"gold","bold":true},{"text":"填充了一个羊毛区域，并获得了","color":"yellow"},{"text":"力量","color":"dark_red","bold":true},{"text":"增益！","color":"yellow"}]

tellraw @a[team=yellow,tag=!spec] [{"text":"+120","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（区域填充奖励）","color":"gold"}]
execute as @a[team=yellow,tag=!spec] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.25
scoreboard players add @a[team=yellow,tag=!spec] round_score_mb 120

scoreboard players set WOOL_PAD_ID data 0