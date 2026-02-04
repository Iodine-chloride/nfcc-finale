# Check if a player is pushed to the void
execute as @a at @s if entity @s[y=160,dy=10] on attacker run tag @s add void_kill

# Send random death msg to all players
execute as @a at @s if entity @s[y=160,dy=10] unless entity @a[tag=void_kill] run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 从战桥上失足跌入了虚空。","color":"white"}]
execute as @a at @s if entity @s[y=160,dy=10] if entity @a[tag=void_kill] run tellraw @a [{"text":"[🗡] "},{"selector":"@s"},{"text":" 被","color":"white"},{"selector":"@e[tag=void_kill,tag=!spec]"},{"text":" 从战桥上击入了虚空。","color":"white"}]

# Reset the victim's deaht tick manually
execute as @a at @s if entity @s[y=160,dy=10] run scoreboard players set @s death_tick -1

# Prevent death msg from being sent multiple times
execute as @a at @s if entity @s[y=160,dy=10] run effect clear @s
execute as @a at @s if entity @s[y=160,dy=10] run effect give @s saturation 1 6 true
execute as @a at @s if entity @s[y=160,dy=10] run effect give @s regeneration 1 6 true
execute as @a at @s if entity @s[y=160,dy=10] run tp @s[tag=first] @e[limit=1,tag=bridge_spawn_red,sort=nearest]
execute as @a at @s if entity @s[y=160,dy=10] run tp @s[tag=second] @e[limit=1,tag=bridge_spawn_blue,sort=nearest]

# Remove void-kill label
tag @a remove void_kill

