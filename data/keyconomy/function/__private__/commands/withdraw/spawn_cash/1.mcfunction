scoreboard players operation #key.value key.math = @s Withdraw
summon item_display ~ ~ ~ {Tags:["key.temp"],view_range:0}
loot replace entity @n[type=item_display,tag=key.temp] container.0 loot keyconomy:cash/1
execute as @n[type=item_display,tag=key.temp] run function keyconomy:__private__/misc/spawn_items
kill @n[type=item_display,tag=key.temp]
scoreboard players set @s Withdraw 0