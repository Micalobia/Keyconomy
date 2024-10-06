execute as @a[tag=key.restocking] at @s unless function keyconomy:__private__/shop/util/restock_nearby run function keyconomy:__private__/shop/restock/stop_player
execute as @e[type=marker,tag=key.restocking] at @s unless function keyconomy:__private__/shop/util/owner_nearby run function keyconomy:__private__/shop/restock/stop_shop
schedule function keyconomy:__private__/periodic 1s replace