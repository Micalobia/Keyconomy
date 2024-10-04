execute unless block ~ ~ ~ barrel run return fail
execute at @a if score @s key.player.id = @p key.player.id run tag @p add key.recalculating
data modify storage keyconomy:data main_item set from entity @n[type=item_display,tag=key.shop.active] item
data remove storage keyconomy:data main_item.count
data modify storage keyconomy:data other_items set from block ~ ~ ~ Items
execute store result score #key.stock key.math run data get entity @s data.stock
execute at @p[tag=key.recalculating] run function keyconomy:__private__/loops/recalculate
execute store result entity @s data.stock int 1 run scoreboard players get #key.stock key.math
data remove block ~ ~ ~ Items
scoreboard players operation #key.value key.math = #key.stock key.math
scoreboard players operation #key.value key.math -= #key.max_stock key.config
execute if score #key.value key.math matches 1.. run tellraw @p[tag=key.recalculating] \
    {\
        "translate":"keyconomy.errors.shop.max_stock",\
        "fallback":"Hit the max stock limit of %s",\
        "color":"red",\
        "with": [\
            {"translate":"chat.square_brackets","with":[\
                {"storage":"keyconomy:data","nbt":"config.max_stock","color":"gold"}\
            ]}\
        ]\
    }
execute if score #key.value key.math matches 1.. store result entity @s data.stock int 1 run scoreboard players get #key.max_stock key.config
execute if score #key.value key.math matches 1.. at @p[tag=key.recalculating] as @n[type=item_display,tag=key.shop.active] run function keyconomy:__private__/loops/spawn_items
tag @p remove key.recalculating