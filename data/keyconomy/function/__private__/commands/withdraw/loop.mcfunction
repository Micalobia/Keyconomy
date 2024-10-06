execute if score @s Withdraw matches 100.. run function keyconomy:__private__/commands/withdraw/spawn_cash/100
execute if score @s Withdraw matches 25..99 run function keyconomy:__private__/commands/withdraw/spawn_cash/25
execute if score @s Withdraw matches 5..24 run function keyconomy:__private__/commands/withdraw/spawn_cash/5
execute if score @s Withdraw matches 1..4 run function keyconomy:__private__/commands/withdraw/spawn_cash/1
execute if score @s Withdraw matches 1.. run function keyconomy:__private__/commands/withdraw/loop