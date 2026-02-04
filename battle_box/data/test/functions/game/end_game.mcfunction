kill @e[type=item]
kill @e[type=arrow,nbt={OnGround:1b}]
effect clear @a
gamemode spectator @a
clear @a

schedule clear test:game/open_door
schedule function test:game/end_plus 5s
function test:game/clear_schedule
