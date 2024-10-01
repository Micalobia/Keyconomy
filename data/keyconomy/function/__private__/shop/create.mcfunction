tag @s add key.current_player
function keyconomy:__private__/player_info
execute summon marker run function keyconomy:__private__/shop/marker
execute summon interaction run function keyconomy:__private__/shop/interaction
execute summon item_display run function keyconomy:__private__/shop/item_display
execute summon text_display run function keyconomy:__private__/shop/count
execute summon text_display run function keyconomy:__private__/shop/price
setblock ~ ~1 ~ barrier
scoreboard players add #key.id key.shop.id 1
tag @e[limit=5,tag=key.temp,distance=..2] remove key.temp
tag @s remove key.current_player