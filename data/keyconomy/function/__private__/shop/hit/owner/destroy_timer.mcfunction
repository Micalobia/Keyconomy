scoreboard players remove @e[type=marker,tag=key.shop,scores={key.timer=1..}] key.timer 1
scoreboard players reset @e[type=marker,tag=key.shop,scores={key.timer=0}] key.timer
execute if entity @e[type=marker,tag=key.shop,scores={key.timer=1..}] run schedule function keyconomy:__private__/shop/hit/owner/destroy_timer 1t replace