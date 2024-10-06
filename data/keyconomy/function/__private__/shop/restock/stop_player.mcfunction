tag @s remove key.restocking
function keyconomy:__private__/shop/restock/clear_key
execute as @e[type=marker,tag=key.restocking,distance=..10] at @s unless function keyconomy:__private__/shop/util/owner_nearby run function keyconomy:__private__/shop/restock/stop_shop