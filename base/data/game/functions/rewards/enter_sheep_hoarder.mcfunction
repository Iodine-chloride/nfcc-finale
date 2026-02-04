scoreboard players enable @s map_selector
advancement revoke @a only game:enter_sheep_hoarder

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"                 Sheep Hoarders","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Aztec","color":"green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 501"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Aztec！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Thorn's Arena","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger map_selector set 502"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Thorn's Arena！"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}