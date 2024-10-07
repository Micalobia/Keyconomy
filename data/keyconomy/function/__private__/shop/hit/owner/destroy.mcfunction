tellraw @s {"translate":"keyconomy.shop.destroy","fallback":"Destroyed shop!","color":"red"}
execute if entity @s[tag=key.restocking] if entity @n[type=marker,tag=key.restocking] run function keyconomy:__private__/shop/restock/stop_player
execute as @n[type=marker,tag=key.shop.active] at @s run function keyconomy:__private__/shop/hit/owner/destroy_at_shop
kill @e[tag=key.shop.active,distance=..10]
return 1