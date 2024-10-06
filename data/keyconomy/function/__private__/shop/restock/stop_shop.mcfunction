execute unless function keyconomy:__private__/shop/util/tag_as_active run tag @s add key.already_active
data merge entity @n[type=interaction,tag=key.shop.active] {width:1.005,height:2.005}
execute as @n[type=interaction,tag=key.shop.active] at @s run tp @s ~ ~-1 ~
data remove block ~ ~ ~ Lock
function keyconomy:__private__/shop/restock/stop/recalculate
tag @s remove key.restocking
execute unless entity @s[tag=key.already_active] run function keyconomy:__private__/shop/util/remove_active_tag
tag @s remove key.already_active