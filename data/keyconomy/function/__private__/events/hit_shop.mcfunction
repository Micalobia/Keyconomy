advancement revoke @s only keyconomy:hit_shop
tag @s add key.current_player
execute as @e[type=interaction,tag=key.shop,distance=..10] at @s on attacker if entity @s[tag=key.current_player] run tag @n[type=interaction,tag=key.shop] add key.shop.active
execute as @e[tag=key.shop,distance=..10] if score @s key.shop.id = @n[tag=key.shop.active,distance=..10] key.shop.id run tag @s add key.shop.active
execute as @e[type=marker,tag=key.shop.active,distance=..10,limit=1] run function keyconomy:__private__/events/pull_shop_info
function keyconomy:__private__/events/give_items
data remove entity @n[type=interaction,tag=key.shop.active] attack
tag @e[tag=key.shop.active,limit=5,distance=..10] remove key.shop.active
tag @s remove key.current_player