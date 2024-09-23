execute if function keyconomy:__private__/valid/shop/broke run return fail
execute if function keyconomy:__private__/valid/shop/no_stock run return fail
scoreboard players operation #key.stock key.math -= #key.count key.math
summon chest_minecart ~ ~ ~ {Tags:["key.temp"]}
data modify entity @n[type=chest_minecart,tag=key.temp] Items set from entity @e[type=marker,tag=key.shop.active,distance=..10,limit=1] data.items
kill @n[type=chest_minecart,tag=key.temp]