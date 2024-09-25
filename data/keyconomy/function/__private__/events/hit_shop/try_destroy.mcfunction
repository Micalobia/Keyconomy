execute if entity @n[type=marker,tag=key.shop.active,scores={key.timer=1..}] run return run function keyconomy:__private__/events/hit_shop/destroy
scoreboard players set @n[type=marker,tag=key.shop.active] key.timer 60
playsound ui.button.click block @s ~ ~ ~ 0.2 0.95
tellraw @s {"translate":"keyconomy.shop.destroy.try","fallback":"Are you trying to remove the shop? Hit it again to remove, or open it to restock.","color":"gold"}
schedule function keyconomy:__private__/events/hit_shop/destroy_timer 1t replace
return fail