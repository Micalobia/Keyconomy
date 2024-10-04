function keyconomy:__private__/tick/sell
function keyconomy:__private__/tick/shop
function keyconomy:__private__/tick/withdraw

execute as @e[type=marker,tag=key.shop] at @s positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=hopper_minecart,dx=2,dz=2] run damage @s 10000