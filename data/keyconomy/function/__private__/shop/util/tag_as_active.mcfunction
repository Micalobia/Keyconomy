execute if entity @s[tag=key.shop.active] run return fail
tag @s add key.shop.active
execute at @s as @e[tag=key.shop,tag=!key.shop.active,distance=..1.31] if score @s key.shop.id = @n[tag=key.shop.active,distance=..0.1] key.shop.id run tag @s add key.shop.active
return 1