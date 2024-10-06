execute store result score #key.temp key.math run data get storage keyconomy:data other_items
execute if score #key.temp key.math matches 0 run return 1
data modify storage keyconomy:data check_item set from storage keyconomy:data other_items[0]
data remove storage keyconomy:data check_item.Slot
data remove storage keyconomy:data check_item.count
execute store success score #key.temp key.math run data modify storage keyconomy:data check_item set from storage keyconomy:data main_item
scoreboard players set #key.inc key.math 0
execute if score #key.temp key.math matches 0 store result score #key.inc key.math run data get storage keyconomy:data other_items[0].count
execute if score #key.temp key.math matches 1 run function keyconomy:__private__/shop/restock/stop/recalculate/drop_wrong_item
scoreboard players operation #key.stock key.math += #key.inc key.math
data remove storage keyconomy:data other_items[0]
function keyconomy:__private__/shop/restock/stop/recalculate/loop