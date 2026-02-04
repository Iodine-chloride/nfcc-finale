execute if entity @e[type=item,nbt={Item:{tag:{Release:1b}}}] run summon armor_stand ~ ~ ~ {Tags:[facing]}
execute if entity @e[type=item,nbt={Item:{tag:{Release:1b}}}] at @e[type=item,nbt={Item:{tag:{Release:1b}}}] run tag @p add rockreleaser
execute as @a[tag=rockreleaser] at @s run tp @e[tag=facing] ~ ~ ~ ~ 0
execute if entity @e[type=item,nbt={Item:{tag:{Release:1b}}}] as @e[type=item,nbt={Item:{tag:{Release:1b}}}] run kill @s
execute as @e[tag=facing] at @s run summon armor_stand ^ ^ ^12 {Tags:[aim]}
execute as @e[tag=aim] at @s run summon armor_stand ^ ^ ^4 {Tags:[aim2]}

scoreboard players remove @a[scores={mwp=0..}] mwp 1
execute as @e[tag=miniwallsskilltext] at @s run scoreboard players set @a[distance=..3,tag=!spec] mwp 200
execute as @e[tag=miniwallsskilltext] at @s run particle flame ~ ~ ~ 2 2 2 0.1 3 force
execute as @e[tag=miniwallsskilltext] at @s run effect give @a[distance=..3] saturation 1 5 true
execute as @e[tag=miniwallsskilltext] at @s run effect give @a[distance=..3] strength 10 0 true
execute as @e[tag=miniwallsskilltext] at @s run effect give @a[distance=..3] regeneration 10 0 true
tellraw @a[scores={mwp=0}] [{"text":"[🔑] "},{"text":"请留意，你的增益效果已经过期。","color":"red"}]

execute as @e[tag=redguardian] at @s run effect give @a[tag=!spec,team=MWred,distance=..10] regeneration 1 0 true
execute as @e[tag=blueguardian] at @s run effect give @a[tag=!spec,team=MWblue,distance=..10] regeneration 1 0 true
execute as @e[tag=greenguardian] at @s run effect give @a[tag=!spec,team=MWgreen,distance=..10] regeneration 1 0 true
execute as @e[tag=yellowguardian] at @s run effect give @a[tag=!spec,team=MWyellow,distance=..10] regeneration 1 0 true

kill @e[type=item]