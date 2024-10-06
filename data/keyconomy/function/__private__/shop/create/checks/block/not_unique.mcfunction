data modify storage keyconomy:data main_item set from block ~ ~ ~ Items[0]
data remove storage keyconomy:data main_item.Slot
data remove storage keyconomy:data main_item.count
data modify storage keyconomy:data other_items set from block ~ ~ ~ Items
data remove storage keyconomy:data other_items[0]
execute if function keyconomy:__private__/shop/create/checks/block/not_unique/loop run return fail
tellraw @s {"translate":"keyconomy.errors.shop.not_unique","fallback":"Must have a single item type!","color":"red"}
return 1