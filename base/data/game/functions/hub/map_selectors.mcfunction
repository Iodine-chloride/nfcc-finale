scoreboard players enable @a map_selector

# journeys
execute as @a[scores={map_selector=1}] run function game:rewards/journeys/1
execute as @a[scores={map_selector=2}] run function game:rewards/journeys/2
execute as @a[scores={map_selector=3}] run function game:rewards/journeys/3

# battle box
execute as @a[scores={map_selector=101}] run function game:rewards/battle_box/1
execute as @a[scores={map_selector=102}] run function game:rewards/battle_box/2
execute as @a[scores={map_selector=103}] run function game:rewards/battle_box/3
execute as @a[scores={map_selector=104}] run function game:rewards/battle_box/4

# bedwars
execute as @a[scores={map_selector=201}] run function game:rewards/bedwars/1
execute as @a[scores={map_selector=202}] run function game:rewards/bedwars/2
execute as @a[scores={map_selector=203}] run function game:rewards/bedwars/3
execute as @a[scores={map_selector=204}] run function game:rewards/bedwars/4

# quakecraft
execute as @a[scores={map_selector=301}] run function game:rewards/quakecraft/1
execute as @a[scores={map_selector=302}] run function game:rewards/quakecraft/2
execute as @a[scores={map_selector=303}] run function game:rewards/quakecraft/3

# hunger games
execute as @a[scores={map_selector=401}] run function game:rewards/hunger_games/1
execute as @a[scores={map_selector=402}] run function game:rewards/hunger_games/2

# sheep hoarders
execute as @a[scores={map_selector=501}] run function game:rewards/sheep_hoarders/1
execute as @a[scores={map_selector=502}] run function game:rewards/sheep_hoarders/2

# tnt tags
execute as @a[scores={map_selector=601}] run function game:rewards/tnt_tags/1
execute as @a[scores={map_selector=602}] run function game:rewards/tnt_tags/2

# lava dancers
execute as @a[scores={map_selector=701}] run function game:rewards/lava_dancers/1
execute as @a[scores={map_selector=702}] run function game:rewards/lava_dancers/2