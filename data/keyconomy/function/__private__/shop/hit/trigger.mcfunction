advancement revoke @s only keyconomy:hit_shop
tag @s add key.current_player
execute \
    as @e[type=interaction,tag=key.shop,distance=..10] \
    at @s \
    on attacker \
    if entity @s[tag=key.current_player] \
    as @n[type=interaction,tag=key.shop,distance=..0.1] \
    run function keyconomy:__private__/shop/util/tag_as_active
execute as @e[type=marker,tag=key.shop.active,distance=..10,limit=1] run function keyconomy:__private__/shop/util/pull_shop_info
execute if score @e[type=marker,tag=key.shop.active,limit=1,distance=..10] key.player.id = @s key.player.id run tag @s add key.owner
execute if entity @n[type=marker,tag=key.shop.active,tag=key.shop.creative] run tag @s add key.shop.creative
execute if entity @s[gamemode=creative] run function keyconomy:__private__/shop/hit/owner/try_destroy
execute if entity @s[gamemode=!creative,tag=key.owner,tag=!key.shop.creative] run function keyconomy:__private__/shop/hit/owner/try_destroy
execute if entity @s[gamemode=!creative,tag=!key.owner] run function keyconomy:__private__/shop/hit/customer/give_items
execute if entity @s[gamemode=!creative,tag=key.owner,tag=key.shop.creative] run function keyconomy:__private__/shop/hit/customer/give_items
tag @s remove key.shop.creative
data remove entity @n[type=interaction,tag=key.shop.active] attack
execute as @n[type=marker,tag=key.shop.active] run function keyconomy:__private__/shop/util/remove_active_tag
tag @s remove key.current_player
tag @s remove key.owner