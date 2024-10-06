scoreboard players operation #key.value key.math = @s Withdraw
scoreboard players operation #key.value key.math /= #100 key.math
summon item_display ~ ~ ~ {Tags:["key.temp"],view_range:0}
loot replace entity @n[type=item_display,tag=key.temp] container.0 loot keyconomy:cash/100
execute as @n[type=item_display,tag=key.temp] run function keyconomy:__private__/misc/spawn_items
kill @n[type=item_display,tag=key.temp]
scoreboard players operation @s Withdraw %= #100 key.math