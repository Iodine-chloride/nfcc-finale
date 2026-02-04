scoreboard players enable @s map_selector
advancement revoke @a only game:enter_hunger_games

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                    Hunger Games","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Xianlin Campus - Part I","color":"green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 401"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Xianlin Campus - Part I！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Xianlin Campus - Part II","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 402"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Xianlin Campus - Part II！"}}]
tellraw @s ["",{"text":" C","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"???","color":"gray","clickEvent":{"action":"run_command","value":"/trigger map_selector set 0"},"hoverEvent":{"action":"show_text","value":"Coming Soon!"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}