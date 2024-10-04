advancement revoke @s only keyconomy:shop
execute unless function keyconomy:__private__/valid/shop_general run return run function keyconomy:__private__/failed_shop
function keyconomy:__private__/raycast
execute summon marker run function keyconomy:__private__/raycast_marker
execute at @n[type=marker,tag=key.raycast] unless function keyconomy:__private__/valid/shop_block run return run function keyconomy:__private__/failed_shop
execute at @n[type=marker,tag=key.raycast] positioned ~0.5 ~0.5 ~0.5 run function keyconomy:__private__/shop/create
kill @n[type=marker,tag=key.raycast]
scoreboard players set @s MakeShop 0