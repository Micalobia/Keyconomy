data merge entity @s {text:'{"translate":"keyconomy.shop.count","fallback":"Count: %s","color":"#5454A8","with":[{"entity":"@n[type=marker,tag=key.temp,tag=key.shop]","nbt":"data.count","color":"gold"}]}',"billboard":"vertical"}
tag @s add key.shop
tag @s add key.shop.count
tag @s add key.shop.movable
tag @s add key.temp
scoreboard players operation @s key.shop.id = #key.id key.shop.id