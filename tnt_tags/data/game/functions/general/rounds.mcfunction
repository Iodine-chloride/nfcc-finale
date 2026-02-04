# Choosing a player with TNT
execute if score ROUND_TIME tick_elapsed matches 900 if score ALIVE data matches 16.. run scoreboard players set @a[sort=random,limit=5,gamemode=adventure] has_tnt 1
execute if score ROUND_TIME tick_elapsed matches 900 if score ALIVE data matches 12..15 run scoreboard players set @a[sort=random,limit=4,gamemode=adventure] has_tnt 1
execute if score ROUND_TIME tick_elapsed matches 900 if score ALIVE data matches 8..11 run scoreboard players set @a[sort=random,limit=3,gamemode=adventure] has_tnt 1
execute if score ROUND_TIME tick_elapsed matches 900 if score ALIVE data matches 4..7 run scoreboard players set @a[sort=random,limit=2,gamemode=adventure] has_tnt 1
execute if score ROUND_TIME tick_elapsed matches 900 if score ALIVE data matches 2..3 run scoreboard players set @a[sort=random,limit=1,gamemode=adventure] has_tnt 1

execute if score ROUND_TIME tick_elapsed matches 900 run title @a reset
execute if score ROUND_TIME tick_elapsed matches 899 run title @a title {"text":"新一轮炸弹已释放！","color":"red","bold":true}
execute if score ROUND_TIME tick_elapsed matches 899 if score RNG tick_elapsed matches ..25 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 成为了天选之子...","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 899 if score RNG tick_elapsed matches 26..50 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 能不能摆脱危机呢？","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 899 if score RNG tick_elapsed matches 51..75 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 发现自己头顶有些烫...","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 899 if score RNG tick_elapsed matches 76.. run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 成为了炸弹人！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 899 run tellraw @a [{"text":"[⚠] "},{"text":"小心！新一轮炸弹已释放！","color":"red","bold":true}]
execute as @a at @s if score ROUND_TIME tick_elapsed matches 899 run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1 1
execute if score ROUND_TIME tick_elapsed matches 898 run team leave @a[scores={has_tnt=1}]
execute if score ROUND_TIME tick_elapsed matches 898 run team join tnt_tag_red @a[scores={has_tnt=1}]

# Warnings
execute if score ROUND_TIME tick_elapsed matches 120 run tellraw @a [{"text":"[⚠] "},{"text":"距离炸弹引爆还有","color":"red","bold":true},{"text":"5","color":"yellow","bold":true},{"text":"秒！","color":"red"}]
execute if score ROUND_TIME tick_elapsed matches 100 run tellraw @a [{"text":"[⚠] "},{"text":"距离炸弹引爆还有","color":"red","bold":true},{"text":"4","color":"yellow","bold":true},{"text":"秒！","color":"red"}]
execute if score ROUND_TIME tick_elapsed matches 80 run tellraw @a [{"text":"[⚠] "},{"text":"距离炸弹引爆还有","color":"red","bold":true},{"text":"3","color":"yellow","bold":true},{"text":"秒！","color":"red"}]
execute if score ROUND_TIME tick_elapsed matches 60 run tellraw @a [{"text":"[⚠] "},{"text":"距离炸弹引爆还有","color":"red","bold":true},{"text":"2","color":"yellow","bold":true},{"text":"秒！","color":"red"}]
execute if score ROUND_TIME tick_elapsed matches 40 run tellraw @a [{"text":"[⚠] "},{"text":"距离炸弹引爆还有","color":"red","bold":true},{"text":"1","color":"yellow","bold":true},{"text":"秒！","color":"red"}]

# Detonating all TNTs
execute if score ROUND_TIME tick_elapsed matches 0 run execute as @e[tag=grenade,type=armor_stand] at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.1 3
execute if score ROUND_TIME tick_elapsed matches 0 run kill @e[tag=grenade,type=armor_stand]
execute if score ROUND_TIME tick_elapsed matches 0 run title @a title {"text":"BOOOOM！","color":"red","bold":true}
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches ..16 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 没有幸存下来...","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches 17..32 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 随着一声巨响消失了...","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches 33..48 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 本以为自己能活下来。","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches 49..64 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 因太菜而被淘汰了。","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches 65..80 run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 没有及时甩锅。","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 if score RNG tick_elapsed matches 80.. run title @a subtitle [{"selector":"@a[scores={has_tnt=1},gamemode=adventure]","color":"gold"},{"text":" 在爆炸中消失了。","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches 0 as @a[scores={has_tnt=1},gamemode=adventure] run scoreboard players add @a[gamemode=adventure,tag=!spec,scores={has_tnt=0}] round_score_mb 35
execute if score ROUND_TIME tick_elapsed matches 0 as @a[scores={has_tnt=1},gamemode=adventure] run tellraw @a[gamemode=adventure,tag=!spec,scores={has_tnt=0}] [{"text":"+35","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（存活时间奖励）","color":"gold"}]
execute if score ROUND_TIME tick_elapsed matches 0 as @a[scores={has_tnt=1},gamemode=adventure] run tp @s @e[tag=tnt_tags_center,limit=1]
execute if score ROUND_TIME tick_elapsed matches 0 as @a[scores={has_tnt=1},gamemode=adventure] run gamemode spectator @s
execute as @a at @s if score ROUND_TIME tick_elapsed matches 0 run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1
execute if score ROUND_TIME tick_elapsed matches 0 run tellraw @a [{"text":"[🛡] "},{"text":"本轮游戏已结束。","color":"red","bold":true}]

# If all players with TNT voided
execute if score ROUND_TIME tick_elapsed matches 1..897 unless entity @a[scores={has_tnt=1},gamemode=adventure] run title @a title {"text":"所有炸弹人已阵亡...","color":"red","bold":true}
execute if score ROUND_TIME tick_elapsed matches 1..897 unless entity @a[scores={has_tnt=1},gamemode=adventure] run title @a subtitle {"text":"本轮游戏提前结束。","color":"yellow","bold":true}
execute if score ROUND_TIME tick_elapsed matches 1..897 unless entity @a[scores={has_tnt=1},gamemode=adventure] run tellraw @a [{"text":"[🛡] "},{"text":"本轮游戏已结束。","color":"red","bold":true}]
execute if score ROUND_TIME tick_elapsed matches 1..897 unless entity @a[scores={has_tnt=1},gamemode=adventure] run scoreboard players set ROUND_TIME tick_elapsed -1

# New rounds
execute if score ROUND_TIME tick_elapsed matches -100 run tellraw @a [{"text":"[⭕] "},{"text":"距离下一轮游戏开始还有","color":"yellow","bold":true},{"text":"5","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -120 run tellraw @a [{"text":"[⭕] "},{"text":"距离下一轮游戏开始还有","color":"yellow","bold":true},{"text":"4","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -140 run tellraw @a [{"text":"[⭕] "},{"text":"距离下一轮游戏开始还有","color":"yellow","bold":true},{"text":"3","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -160 run tellraw @a [{"text":"[⭕] "},{"text":"距离下一轮游戏开始还有","color":"yellow","bold":true},{"text":"2","color":"green","bold":true},{"text":"秒！","color":"yellow"}]
execute if score ROUND_TIME tick_elapsed matches -180 run tellraw @a [{"text":"[⭕] "},{"text":"距离下一轮游戏开始还有","color":"yellow","bold":true},{"text":"1","color":"green","bold":true},{"text":"秒！","color":"yellow"}]