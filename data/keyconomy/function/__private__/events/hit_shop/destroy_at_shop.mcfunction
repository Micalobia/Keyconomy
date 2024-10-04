setblock ~ ~1 ~ air
data remove block ~ ~ ~ Lock
particle minecraft:smoke ~ ~0.5 ~ 0.25 0.5 0.25 0.01 30
playsound minecraft:block.decorated_pot.shatter block @a[distance=..10] ~ ~ ~ 1 0.8
execute store result score #key.value key.math run data get entity @s data.stock
execute positioned ~ ~0.55 ~ as @n[type=item_display,tag=key.shop.active] run function keyconomy:__private__/loops/spawn_items