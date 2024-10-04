summon item ~ ~ ~ {PickupDelay:0s,Tags:["key.temp"],Item:{id:"stone"}}
data modify storage keyconomy:data macro.slot set from storage keyconomy:data other_items[0].Slot
execute as @n[type=item,tag=key.temp] at @n[type=marker,tag=key.shop.active] run function keyconomy:__private__/shop/assign_item with storage keyconomy:data macro
tag @n[type=item,tag=key.temp] remove key.temp