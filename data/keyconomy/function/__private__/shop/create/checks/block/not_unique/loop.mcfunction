execute store result score #key.temp key.math run data get storage keyconomy:data other_items
execute if score #key.temp key.math matches 0 run return 1
data modify storage keyconomy:data check_item set from storage keyconomy:data other_items[0]
data remove storage keyconomy:data check_item.Slot
data remove storage keyconomy:data check_item.count
execute store success score #key.temp key.math run data modify storage keyconomy:data check_item set from storage keyconomy:data main_item
data remove storage keyconomy:data other_items[0]
execute if score #key.temp key.math matches 1 run return fail
return run function keyconomy:__private__/shop/create/checks/block/not_unique/loop