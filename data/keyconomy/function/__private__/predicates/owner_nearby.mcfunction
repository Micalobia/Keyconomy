tag @s add key.owner_nearby
execute \
    as @a[distance=..10] \
    if score @s key.player.id = @n[type=marker,tag=key.owner_nearby,distance=..0.1] key.player.id \
    run tag @s add key.owner_nearby.owner
tag @s remove key.owner_nearby
return run tag @p[tag=key.owner_nearby.owner] remove key.owner_nearby.owner