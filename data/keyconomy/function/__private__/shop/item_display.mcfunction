tp @s ~ ~1 ~
data merge entity @s {item_display:"gui",billboard:"vertical",transformation:[-0.5f,0f,0f,0f,0f,0.5f,0f,-0.25f,-0f,0f,-0.5f,0f,0f,0f,0f,1f]}
data modify storage keyconomy:data macro.slot set from block ~ ~ ~ Items[0].Slot
function keyconomy:__private__/shop/assign_item with storage keyconomy:data macro
tag @s add key.shop
tag @s add key.temp
scoreboard players operation @s key.shop.id = #key.id key.shop.id