execute as @e[tag=key.shop.active,tag=key.shop.movable,distance=..2] at @s run tp @s ~ ~1 ~
setblock ~ ~ ~ barrel[facing=down]
data modify block ~ ~ ~ Lock set string storage keyconomy:data macro.random