execute as @e[tag=levitatemarker] at @s run effect give @a[tag=!spec,gamemode=!spectator,dx=1,dz=1,dy=17] levitation 1 8
execute as @e[tag=levitatemarker] at @s run particle effect ~0.5 ~0 ~0.5 0.1 5 0.1 0.005 20 force

# BGM Settings
scoreboard players add BGM tick_elapsed 1
execute if score BGM tick_elapsed matches 6320.. run scoreboard players set BGM tick_elapsed 0
execute if score BGM tick_elapsed matches 1 run stopsound @a master minecraft:bingo
execute if score BGM tick_elapsed matches 2 run execute as @a at @s run playsound minecraft:bingo master @s ~ ~ ~ 0.2 1
