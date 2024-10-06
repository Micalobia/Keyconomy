advancement revoke @s only keyconomy:shop
execute unless function keyconomy:__private__/shop/create/checks/player run return run function keyconomy:__private__/commands/shop/failed
function keyconomy:__private__/shop/util/raycast
execute summon marker run function keyconomy:__private__/shop/util/raycast_marker
execute at @n[type=marker,tag=key.raycast] unless function keyconomy:__private__/shop/create/checks/block run return run function keyconomy:__private__/commands/shop/failed
execute at @n[type=marker,tag=key.raycast] positioned ~0.5 ~0.5 ~0.5 run function keyconomy:__private__/shop/create
kill @n[type=marker,tag=key.raycast]
scoreboard players set @s MakeShop 0