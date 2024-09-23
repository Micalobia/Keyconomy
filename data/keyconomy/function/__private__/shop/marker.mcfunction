execute store result entity @s data.count int 1 run function keyconomy:__private__/count_barrel_items
execute store result entity @s data.price int 1 run scoreboard players get @p[tag=key.current_player] MakeShop
data modify entity @s data.stock set from entity @s data.count
data modify entity @s data.items set from block ~ ~ ~ Items
data modify entity @s data.owner set from storage keyconomy:data player
tag @s add key.shop
tag @s add key.temp
scoreboard players operation @s key.shop.id = #key.id key.shop.id