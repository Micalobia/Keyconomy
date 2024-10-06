tag @s add key.current_player
function keyconomy:__private__/shop/util/player_info
execute summon marker run function keyconomy:__private__/shop/create/marker
execute summon interaction run function keyconomy:__private__/shop/create/interaction
execute summon item_display run function keyconomy:__private__/shop/create/item_display
execute summon text_display run function keyconomy:__private__/shop/create/count
execute summon text_display run function keyconomy:__private__/shop/create/price
data remove block ~ ~ ~ Items
setblock ~ ~1 ~ barrier
scoreboard players add #key.id key.shop.id 1
tag @e[limit=5,tag=key.temp,distance=..2] remove key.temp
tag @s remove key.current_player