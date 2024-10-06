execute if function keyconomy:__private__/shop/restock/start/checks/already_restocking run return fail
execute if function keyconomy:__private__/shop/restock/start/checks/hands_full run return fail
execute if function keyconomy:__private__/shop/restock/start/checks/riding_ephemeral run return fail
tag @s add key.restocking
tag @n[type=marker,tag=key.shop.active] add key.restocking
data merge entity @n[type=interaction,tag=key.shop.active] {width:1.005f,height:1.005f}
execute as @n[type=interaction,tag=key.shop.active] at @s run tp @s ~ ~1 ~
execute store result storage keyconomy:data macro.random int 1 run random value 1..2147483647
execute at @n[type=marker,tag=key.shop.active] run data modify block ~ ~ ~ Lock set string storage keyconomy:data macro.random
summon item_display ~ ~ ~ {Tags:["key.temp"],view_range:0}
loot replace entity @n[type=item_display,tag=key.temp] container.0 loot keyconomy:restock_key
function keyconomy:__private__/shop/restock/start/key_name with storage keyconomy:data macro
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=key.temp] container.0
kill @n[type=item_display,tag=key.temp,distance=..0.1]