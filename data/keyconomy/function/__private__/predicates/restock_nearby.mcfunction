tag @s add key.restock_nearby
execute \
    as @e[type=marker,tag=key.restocking,distance=..10] \
    if score @s key.player.id = @p[tag=key.restock_nearby,distance=..0.1] key.player.id \
    run tag @s add key.restock_nearby.shop
tag @s remove key.restock_nearby
return run tag @n[type=marker,tag=key.restock_nearby.shop] remove key.restock_nearby.shop