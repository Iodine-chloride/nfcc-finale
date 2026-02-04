tag @e[tag=bingo_table_entry,tag=player_1] add red
tag @e[tag=bingo_table_entry,tag=player_5] add red
tag @e[tag=bingo_table_entry,tag=player_9] add red
tag @e[tag=bingo_table_entry,tag=player_13] add red
tag @e[tag=bingo_table_entry,tag=player_17] add red
tag @e[tag=bingo_table_entry,tag=player_21] add red

tag @e[tag=bingo_table_entry,tag=player_2] add blue
tag @e[tag=bingo_table_entry,tag=player_6] add blue
tag @e[tag=bingo_table_entry,tag=player_10] add blue
tag @e[tag=bingo_table_entry,tag=player_14] add blue
tag @e[tag=bingo_table_entry,tag=player_18] add blue
tag @e[tag=bingo_table_entry,tag=player_22] add blue

tag @e[tag=bingo_table_entry,tag=player_3] add green
tag @e[tag=bingo_table_entry,tag=player_7] add green
tag @e[tag=bingo_table_entry,tag=player_11] add green
tag @e[tag=bingo_table_entry,tag=player_15] add green
tag @e[tag=bingo_table_entry,tag=player_19] add green
tag @e[tag=bingo_table_entry,tag=player_23] add green

tag @e[tag=bingo_table_entry,tag=player_4] add yellow
tag @e[tag=bingo_table_entry,tag=player_8] add yellow
tag @e[tag=bingo_table_entry,tag=player_12] add yellow
tag @e[tag=bingo_table_entry,tag=player_16] add yellow
tag @e[tag=bingo_table_entry,tag=player_20] add yellow
tag @e[tag=bingo_table_entry,tag=player_24] add yellow

scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 1
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 2
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 3
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 4
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 5
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 6
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 7
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 8
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 9
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 10
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 11
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 12
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 13
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 14
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 15
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 16
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 17
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 18
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 19
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 20
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 21
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 22
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 23
scoreboard players set @a[limit=1,sort=random,gamemode=!spectator,scores={bingo_player=0}] bingo_player 24

team join red @a[limit=1,team=,scores={bingo_player=1}]
team join blue @a[limit=1,team=,scores={bingo_player=2}]
team join green @a[limit=1,team=,scores={bingo_player=3}]
team join yellow @a[limit=1,team=,scores={bingo_player=4}]

team join red @a[limit=1,team=,scores={bingo_player=5}]
team join blue @a[limit=1,team=,scores={bingo_player=6}]
team join green @a[limit=1,team=,scores={bingo_player=7}]
team join yellow @a[limit=1,team=,scores={bingo_player=8}]

team join red @a[limit=1,team=,scores={bingo_player=9}]
team join blue @a[limit=1,team=,scores={bingo_player=10}]
team join green @a[limit=1,team=,scores={bingo_player=11}]
team join yellow @a[limit=1,team=,scores={bingo_player=12}]

team join red @a[limit=1,team=,scores={bingo_player=13}]
team join blue @a[limit=1,team=,scores={bingo_player=14}]
team join green @a[limit=1,team=,scores={bingo_player=15}]
team join yellow @a[limit=1,team=,scores={bingo_player=16}]

team join red @a[limit=1,team=,scores={bingo_player=17}]
team join blue @a[limit=1,team=,scores={bingo_player=18}]
team join green @a[limit=1,team=,scores={bingo_player=19}]
team join yellow @a[limit=1,team=,scores={bingo_player=20}]

team join red @a[limit=1,team=,scores={bingo_player=21}]
team join blue @a[limit=1,team=,scores={bingo_player=22}]
team join green @a[limit=1,team=,scores={bingo_player=23}]
team join yellow @a[limit=1,team=,scores={bingo_player=24}]

