tp @s ~ ~1.3 ~
data merge entity @s {text:'{"translate":"keyconomy.shop.price","fallback":"Price: %s","color":"#5454A8","with":[{"entity":"@n[type=marker,tag=key.temp,tag=key.shop]","nbt":"data.price","color":"gold"}]}',"billboard":"vertical"}
tag @s add key.shop
tag @s add key.shop.price
tag @s add key.temp
scoreboard players operation @s key.shop.id = #key.id key.shop.id