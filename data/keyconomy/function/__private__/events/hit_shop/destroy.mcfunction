tellraw @s {"translate":"keyconomy.shop.destroy","fallback":"Destroyed shop!","color":"red"}
playsound minecraft:block.decorated_pot.shatter block @p ~ ~ ~ 1 0.8
execute at @n[type=marker,tag=key.shop.active] run particle minecraft:smoke ~ ~0.5 ~ 0.25 0.5 0.25 0.01 30
kill @e[tag=key.shop.active,distance=..10]
return 1