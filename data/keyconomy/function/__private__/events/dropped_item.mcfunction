advancement revoke @s only keyconomy:dropped_item
scoreboard players set @s key.dropped 0
tag @s add key.dropped_item
execute as @e[type=item,distance=..2] if data entity @s Item.components."minecraft:custom_data"."key.random" run function keyconomy:__private__/events/dropped_item/clear
tag @s remove key.dropped_item