execute store result entity @s data.count int 1 run function keyconomy:__private__/shop/create/marker/count
execute store result entity @s data.price int 1 run scoreboard players get @p[tag=key.current_player] MakeShop
data modify entity @s data.stock set from entity @s data.count
data modify entity @s data.owner set from storage keyconomy:data player
tag @s add key.shop
tag @s add key.temp
execute if entity @p[tag=key.current_player,tag=key.shop.creative] run tag @s add key.shop.creative
scoreboard players operation @s key.shop.id = #key.id key.shop.id
scoreboard players operation @s key.player.id = @p[tag=key.current_player] key.player.id