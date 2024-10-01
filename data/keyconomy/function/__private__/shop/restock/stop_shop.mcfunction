function keyconomy:__private__/shop/tag_as_active
data merge entity @n[type=interaction,tag=key.shop.active] {width:1.005,height:2.005}
execute as @n[type=interaction,tag=key.shop.active] at @s run tp @s ~ ~-1 ~
data remove block ~ ~ ~ Lock
tag @s remove key.restocking
function keyconomy:__private__/shop/remove_active_tag