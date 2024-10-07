function keyconomy:__private__/tick/sell
function keyconomy:__private__/tick/shop
function keyconomy:__private__/tick/withdraw

execute as @e[type=marker,tag=key.restocking] at @s run function keyconomy:__private__/shop/restock/prevent_cheese
