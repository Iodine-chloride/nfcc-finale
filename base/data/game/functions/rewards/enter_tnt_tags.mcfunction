scoreboard players enable @s map_selector
advancement revoke @a only game:enter_tnt_tags

tellraw @s {"text":"========================================","bold":true,"color":"gold"}
tellraw @s {"text":"               TNT Tags","bold":true,"color":"yellow"}
tellraw @s [{"text":" ● ","color":"aqua"},{"text":"该游戏支持多地图，请选择：","color":"white","bold":true}]
tellraw @s ["",{"text":" A","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Grand Mansions","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger map_selector set 601"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Grand Mansions！"}}]
tellraw @s ["",{"text":" B","color":"yellow","bold":true},{"text":" - ","color":"white"},{"text":"Into the Hell","color":"red","clickEvent":{"action":"run_command","value":"/trigger map_selector set 602"},"hoverEvent":{"action":"show_text","value":"点击选择地图：Into the Hell！"}}]
tellraw @s {"text":"========================================","bold":true,"color":"gold"}
