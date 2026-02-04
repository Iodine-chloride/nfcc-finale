# Send random death msg to all players
execute if entity @a[scores={MWDeathCount=1},tag=!spec] unless entity @a[scores={MWKillCount=1},tag=!spec] run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1}]"},{"text":" 从高处摔了下来","color":"white"}]

execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 0..11 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 没有抵抗住 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的致命一击。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 12..23 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 在和 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的搏斗中失败了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 24..35 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 试图击杀 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":"，却不幸被反杀了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 36..47 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 对于 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 而言太不堪一击了。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 48..59 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 太菜了，经不起 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的考验。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 60..71 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 输掉了和 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 的决斗。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 72..83 run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 被 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" 杀了个片甲不留。"}]
execute if entity @a[scores={MWDeathCount=1},tag=!spec] if entity @a[scores={MWKillCount=1},tag=!spec] if score RNG tick_elapsed matches 84.. run tellraw @a [{"text":"[🗡] "},{"selector":"@a[scores={MWDeathCount=1},tag=!spec]"},{"text":" 试图逃离 ","color":"white"},{"selector":"@a[scores={MWKillCount=1},tag=!spec]"},{"text":" ，却为时已晚。"}]


# Rewards upon void kills
tellraw @a[scores={MWKillCount=1},tag=!spec] [{"text":"+30","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（击杀奖励）","color":"gold"}]
execute as @a[scores={MWKillCount=1},tag=!spec] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
scoreboard players add @a[scores={MWKillCount=1},tag=!spec] round_score_mb 30

gamemode spectator @a[scores={MWDeathCount=1},tag=!spec]
scoreboard players set @a[scores={MWDeathCount=1},tag=!spec] MWDeathCount 0
scoreboard players set @a[scores={MWKillCount=1..},tag=!spec] MWKillCount 0

