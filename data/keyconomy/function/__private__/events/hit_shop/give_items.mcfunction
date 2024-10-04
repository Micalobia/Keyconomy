execute if function keyconomy:__private__/valid/shop/broke run return fail
execute if function keyconomy:__private__/valid/shop/no_stock run return fail
execute if function keyconomy:__private__/valid/shop/hopper_player run return fail
execute positioned ~-0.5 ~ ~-0.5 if function keyconomy:__private__/valid/shop/hopper_minecarts_nearby run return fail
scoreboard players operation @s key.money -= #key.price key.math
function keyconomy:__private__/events/hit_shop/give_owner_money with entity @n[type=marker,tag=key.shop.active] data.owner
scoreboard players operation #key.stock key.math -= #key.count key.math
scoreboard players operation #key.value key.math = #key.count key.math
execute store result entity @n[type=marker,tag=key.shop.active] data.stock int 1 run scoreboard players get #key.stock key.math
execute as @n[type=item_display,tag=key.shop.active] run function keyconomy:__private__/loops/spawn_items