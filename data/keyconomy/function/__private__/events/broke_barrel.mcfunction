advancement revoke @s only keyconomy:broke_barrel
scoreboard players set @s key.barrel_broken 0
tag @s add key.current_player
execute \
    as @e[type=marker,tag=key.shop,distance=..10] \
    at @s \
    unless block ~ ~ ~ barrel \
    run function keyconomy:__private__/shop/tag_as_active
execute as @n[type=marker,tag=key.shop.active,distance=..10] at @a if score @s key.player.id = @p key.player.id run tag @p add key.owner
execute if entity @s[tag=key.owner] run function keyconomy:__private__/events/hit_shop/destroy
execute if entity @s[tag=!key.owner] at @n[type=marker,tag=key.shop.active,distance=..10] run function keyconomy:__private__/events/restore_shop
tag @s remove key.current_player
tag @p[tag=key.owner] remove key.owner