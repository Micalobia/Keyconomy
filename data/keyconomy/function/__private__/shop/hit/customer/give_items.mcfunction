execute if function keyconomy:__private__/shop/hit/customer/checks/broke run return fail
execute if function keyconomy:__private__/shop/hit/customer/checks/no_stock run return fail
execute if function keyconomy:__private__/shop/hit/customer/checks/hopper_player run return fail
execute if function keyconomy:__private__/shop/hit/customer/checks/hopper_minecarts_nearby run return fail
scoreboard players operation @s key.money -= #key.price key.math
function keyconomy:__private__/shop/hit/customer/give_owner_money with entity @n[type=marker,tag=key.shop.active] data.owner
scoreboard players operation #key.stock key.math -= #key.count key.math
scoreboard players operation #key.value key.math = #key.count key.math
execute store result entity @n[type=marker,tag=key.shop.active] data.stock int 1 run scoreboard players get #key.stock key.math
execute as @n[type=item_display,tag=key.shop.active] run function keyconomy:__private__/misc/spawn_items