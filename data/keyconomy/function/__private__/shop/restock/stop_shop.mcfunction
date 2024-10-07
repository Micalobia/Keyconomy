execute unless function keyconomy:__private__/shop/util/tag_as_active run tag @s add key.already_active
data merge entity @n[type=interaction,tag=key.shop.active] {width:1.005,height:1.005}
execute as @e[tag=key.shop.active,tag=key.shop.movable,distance=..2] at @s run tp @s ~ ~-1 ~
function keyconomy:__private__/shop/restock/stop/recalculate
execute if block ~ ~ ~ barrel run setblock ~ ~ ~ barrier
tag @s remove key.restocking
execute unless entity @s[tag=key.already_active] run function keyconomy:__private__/shop/util/remove_active_tag
tag @s remove key.already_active