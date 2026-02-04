execute if score INGAME data matches 1 run function game:general/main
execute if score INGAME data matches 1 run function game:ingame/main

# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}
execute if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.6 with air

# Display of classes
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.0 with minecraft:rotten_flesh{Class:1b,Unthrowable:1b,SkullOwner:"MHF_Zombie",display:{Name:'[{"text":"§2§l选择职业：僵尸"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§a■□□"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 石剑（锋利 III）"}','{"text":"§7 ● 腐肉 *4"}','""','{"text":"§e主动技：§f嗜血"}','{"text":"§7 ● 在接下来的§a9§7秒内获得力量效果，增加§a3§7近战"}','{"text":"§7   伤害。"}','{"text":"§3   (冷却时间：50秒)"}','""','{"text":"§e被动技 I：§f亡灵"}','{"text":"§7 ● 近战攻击有§a8%§7的概率吸取敌方的§a2§c♥§7生命值。"}','""','{"text":"§e被动技 II：§f窃魂"}','{"text":"§7 ● 击杀敌人后，你补充§a8§c♥§7生命值。"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.1 with minecraft:string{Class:2b,Unthrowable:1b,SkullOwner:"MHF_Spider",display:{Name:'[{"text":"§7§l选择职业：蜘蛛"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§a■□□"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 钻石剑（节肢杀手 IV）"}','{"text":"§7 ● 锁链靴子（摔落保护 IV）"}','{"text":"§7 ● 线 *4"}','""','{"text":"§e主动技：§f毒液"}','{"text":"§7 ● 向周围§a4§7格内释放毒液，范围内所有目标获得"}','{"text":"§7   §a12§7秒中毒I，同时移动速度降低§a20%§7。"}','{"text":"§3   (冷却时间：45秒)"}','""','{"text":"§e被动技 I：§f编织"}','{"text":"§7 ● 受到伤害时有§a11%§7概率在攻击者处放置一个蜘"}','{"text":"§7   蜘蛛网，阻碍其移动。"}','""','{"text":"§e被动技 II：§f恐吓"}','{"text":"§7 ● 当你吃下食物时，周围§a8§7格内目标获得§a12§7秒反"}','{"text":"§7   胃效果。"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.2 with minecraft:bone{Class:3b,Unthrowable:1b,SkullOwner:"MHF_Skeleton",display:{Name:'[{"text":"§f§l选择职业：骷髅"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§e■■□"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 弓（力量 I）"}','{"text":"§7 ● 箭 *24"}','{"text":"§7 ● 迟缓之箭 *3"}','""','{"text":"§e主动技：§f箭术"}','{"text":"§7 ● 额外补充§a12§7根箭矢。"}','{"text":"§3   (冷却时间：45秒)"}','""','{"text":"§e被动技 I：§f坚韧"}','{"text":"§7 ● 每受到一次远程攻击，你获得§a4§7秒的抗性提升I加成。"}','""','{"text":"§e被动技 II：§f敏捷"}','{"text":"§7 ● 使用弓成功命中目标时获得§a5§7秒的§a+15%§7速度加成。"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.3 with minecraft:gunpowder{Class:5b,Unthrowable:1b,SkullOwner:"MHF_Creeper",display:{Name:'[{"text":"§a§l选择职业：爬行者"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§e■■□"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 铁剑（横扫之刃 I）"}','{"text":"§7 ● 苹果 *6"}','""','{"text":"§e主动技：§f爆破"}','{"text":"§7 ● 在脚下立即释放一个TNT，§a3§7秒后引爆，对周围"}','{"text":"§7   3格内的所有敌人造成§a6§c♥§7生命的伤害。"}','{"text":"§3   (冷却时间：45秒)"}','""','{"text":"§e被动技 I：§f逃逸"}','{"text":"§7 ● 击杀敌人给予你§a5§7秒的速度IV加成，并对周围5格"}','{"text":"§7   内的所有目标施加失明效果。"}','""','{"text":"§e被动技 II：§f复仇"}','{"text":"§7 ● 死亡后瞬间爆炸，对3格内目标造成§a12§c♥§7伤害。"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:ender_eye{Class:4b,Unthrowable:1b,SkullOwner:"MHF_Enderman",display:{Name:'[{"text":"§5§l选择职业：末影人"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§c■■■"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 铁剑（锋利 I）"}','{"text":"§7 ● 末影珍珠 *1"}','""','{"text":"§e主动技：§f幻影"}','{"text":"§7 ● 标记你的当前位置，并在§a5§7秒后传送回去。"}','{"text":"§3   (冷却时间：15秒)"}','""','{"text":"§e被动技 I：§f传送"}','{"text":"§7 ● 吃下食物后传送至15格内一随机玩家身后，并获"}','{"text":"§7   得§a3§7秒的§a+45%§7移动速度。但你的近战伤害减少§a3§7。"}','""','{"text":"§e被动技 II：§f畏惧"}','{"text":"§7 ● 受到弓箭伤害时有§e33%§7概率追加§e3§7秒失明效果。"}']}}
execute if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.5 with minecraft:blaze_powder{Class:6b,Unthrowable:1b,SkullOwner:"MHF_Blaze",display:{Name:'[{"text":"§6§l选择职业：烈焰人"},{"text":" - "},{"text":"§7按丢弃键使用"}]',Lore:['{"text":"§e操控难度：§c■■■"}','""','{"text":"§e额外道具："}','{"text":"§7 ● 弓（火矢 I）"}','{"text":"§7 ● 箭 *12"}','{"text":"§7 ● 虚弱之箭 *3"}','""','{"text":"§e主动技：§f献祭"}','{"text":"§7 ● 连射三颗烈焰弹，每颗对单体目标造成§a6§c♥§7时伤害。"}','{"text":"§3   (冷却时间：60秒)"}','""','{"text":"§e被动技 I：§f涅槃"}','{"text":"§7 ● 死亡后涅槃重生，获得§a10§c♥§7的生命值及持续§a3§7秒的无"}','{"text":"§7   敌时间。在此期间你的攻击伤害减少§a75%§7。"}','{"text":"§3   (每场限定一次)"}','""','{"text":"§e被动技 II：§f焚心"}','{"text":"§7 ● 在释放涅槃之前，你的近战伤害减少§e4§c♥§7。"}']}}

# Choosing classes
execute as @e[type=item,nbt={Item:{tag:{Class:1b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"僵尸","color":"dark_green","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:1b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Zombie Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Zombie",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:1b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 1
execute as @e[type=item,nbt={Item:{tag:{Class:1b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_zombie @a[limit=1,distance=..1.45]

execute as @e[type=item,nbt={Item:{tag:{Class:2b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"蜘蛛","color":"gray","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:2b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Spider Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Spider",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:2b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 2
execute as @e[type=item,nbt={Item:{tag:{Class:2b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_spider @a[limit=1,distance=..1.45]

execute as @e[type=item,nbt={Item:{tag:{Class:3b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"骷髅","color":"white","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:3b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Skeleton Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Skeleton",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:3b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 3
execute as @e[type=item,nbt={Item:{tag:{Class:3b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_skeleton @a[limit=1,distance=..1.45]

execute as @e[type=item,nbt={Item:{tag:{Class:4b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"末影人","color":"dark_purple","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:4b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Enderman Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Enderman",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:4b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 4
execute as @e[type=item,nbt={Item:{tag:{Class:4b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_enderman @a[limit=1,distance=..1.45]

execute as @e[type=item,nbt={Item:{tag:{Class:5b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"爬行者","color":"green","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:5b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Creeper Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Creeper",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:5b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 5
execute as @e[type=item,nbt={Item:{tag:{Class:5b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_creeper @a[limit=1,distance=..1.45]

execute as @e[type=item,nbt={Item:{tag:{Class:6b}}}] at @s if entity @a[limit=1,distance=..1.45] run tellraw @a[limit=1,distance=..1.45] [{"text":"[","color":"white"},{"text":"🛡","color":"green"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest]","color":"gold"},{"text":" 选择了职业 - "},{"text":"烈焰人","color":"gold","bold":true},{"text":"！"}]
execute as @e[type=item,nbt={Item:{tag:{Class:6b}}}] at @s if entity @a[limit=1,distance=..1.45] run item replace entity @a[limit=1,distance=..1.45] armor.head with minecraft:player_head{display:{Name:'{"text":"Blaze Head","italic":false}'},HideFlags:63,SkullOwner:"MHF_Blaze",Enchantments:[{id:"binding_curse",lvl:1}]}
execute as @e[type=item,nbt={Item:{tag:{Class:6b}}}] at @s if entity @a[limit=1,distance=..1.45] run scoreboard players set @a[limit=1,distance=..1.45] class 6
execute as @e[type=item,nbt={Item:{tag:{Class:6b}}}] at @s if entity @a[limit=1,distance=..1.45] run team join sg_blaze @a[limit=1,distance=..1.45]

# Waiting room options
execute if score STARTED data matches 1 if score INGAME data matches 0 run clear @a
execute if score STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true
execute if score EVENT_STARTED data matches 0 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.8 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
execute if score EVENT_STARTED data matches 1 if score PLAYED_SURVIVAL_GAMES data matches 0..1 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.8 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
clear @a[scores={ready=1}]

# Getting ready
execute as @a[scores={carrot_stick=1,ready=0,class=0}] run tellraw @s [{"text":"[","color":"white"},{"text":"❌","color":"red"},{"text":"] "},{"text":"你还未选择职业，不能准备！"}]
scoreboard players set @a[scores={carrot_stick=1,ready=0,class=0}] carrot_stick 0

execute as @a[scores={carrot_stick=1,ready=0,class=1..}] run tellraw @a [{"text":"[","color":"white"},{"text":"✔","color":"green"},{"text":"] "},{"selector":"@s","color":"gold"},{"text":" 已经准备好成为冠军了！"}]
scoreboard players set @a[scores={carrot_stick=1,class=1..}] ready 1
scoreboard players set @a[scores={carrot_stick=1,ready=1,class=1..}] carrot_stick 0

# Starting game
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set STARTED data 1
execute unless entity @a[tag=!spec,scores={ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"⚔","color":"yellow"},{"text":"] "},{"text":" 所有玩家准备就绪，游戏即将开始！","color":"green"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a reset
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a title {"text":"游戏即将开始！","color":"green","bold":true}
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"NJU but Minecraft!","color":"gold"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run schedule function game:general/start_game 5s
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set @a ready 0