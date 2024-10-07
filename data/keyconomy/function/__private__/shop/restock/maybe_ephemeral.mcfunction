advancement revoke @s only keyconomy:maybe_ephemeral
function keyconomy:__private__/shop/util/raycast
execute summon marker run function keyconomy:__private__/shop/util/raycast_marker
execute \
    at @n[type=marker,tag=key.raycast] \
    if score @n[type=marker,tag=key.restocking,dx=0] key.player.id = @s key.player.id \
    run tag @s add key.correct_shop
kill @n[type=marker,tag=key.raycast]
execute unless entity @s[tag=key.correct_shop] run function keyconomy:__private__/shop/restock/stop_player
tag @s remove key.correct_shop