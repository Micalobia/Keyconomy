execute as @a[tag=key.restocking] at @s unless function keyconomy:__private__/predicates/restock_nearby run function keyconomy:__private__/shop/restock/stop_player
execute as @e[type=marker,tag=key.restocking] at @s unless function keyconomy:__private__/predicates/owner_nearby run function keyconomy:__private__/shop/restock/stop_shop
schedule function keyconomy:periodic 1s replace