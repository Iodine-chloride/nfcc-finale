tag @e[limit=1,tag=first] add printed

# tellraw @a {"text":"========================================","bold":true,"color":"gold"}
# tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec,tag=first,limit=1] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
# tellraw @a {"text":"========================================","bold":true,"color":"gold"}

tag @e[limit=1,tag=first] remove first