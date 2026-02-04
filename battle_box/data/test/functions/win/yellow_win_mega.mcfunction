tellraw @a[team=red] [{"text":"+140","color":"green"},{"text":"⭐","color":"yellow"},{"text":"（获胜奖励）","color":"gold"}]
scoreboard players add @a[team=red] round_score_mb 140

execute if score CHOSEN_MAP data matches 104 run fill -5 12 208 -3 12 210 yellow_concrete
execute if score CHOSEN_MAP data matches 104 run fill 6 12 199 8 12 197 yellow_concrete
execute if score CHOSEN_MAP data matches 104 run fill 16 12 218 18 12 220 yellow_concrete
execute if score CHOSEN_MAP data matches 104 run fill -13 12 189 -15 12 187 yellow_concrete

summon firework_rocket -4 15 209 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16445716],FadeColors:[I;16445716]}],Flight:1}}}}
summon firework_rocket 7 15 198 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16445716],FadeColors:[I;16445716]}],Flight:1}}}}
summon firework_rocket 17 15 219 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16445716],FadeColors:[I;16445716]}],Flight:1}}}}
summon firework_rocket -14 15 188 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;16445716],FadeColors:[I;16445716]}],Flight:1}}}}

title @a title {"text":"游戏结束！","color":"yellow","bold":true}
title @a subtitle [{"text":"黄队","color":"gold"},{"text":"玩家活到了最后！","color":"yellow"}]

schedule clear test:win/no_win
function test:game/end_game

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1