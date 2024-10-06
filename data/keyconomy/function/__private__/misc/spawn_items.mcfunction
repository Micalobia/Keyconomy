execute if score #key.value key.math matches ..0 run return fail
summon item ~ ~ ~ {PickupDelay:0s,Tags:["key.temp"],Item:{id:"stone"}}
item replace entity @n[type=item,tag=key.temp] container.0 from entity @s container.0
data modify entity @n[type=item,tag=key.temp] Owner set from entity @p[tag=key.current_player] UUID
execute if score #key.value key.math matches 1..99 store result entity @n[type=item,tag=key.temp] Item.count int 1 run scoreboard players get #key.value key.math
execute if score #key.value key.math matches 100.. run data modify entity @n[type=item,tag=key.temp] Item.count set value 99
tag @n[type=item,tag=key.temp] remove key.temp
execute if score #key.value key.math matches 1..99 run return fail
execute if score #key.value key.math matches 100.. run scoreboard players remove #key.value key.math 99
function keyconomy:__private__/misc/spawn_items