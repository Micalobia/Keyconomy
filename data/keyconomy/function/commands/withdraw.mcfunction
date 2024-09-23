advancement revoke @s only keyconomy:withdraw
execute unless function keyconomy:__private__/valid/withdraw run return fail
execute if score @s Withdraw > @s key.money run scoreboard players operation @s Withdraw = @s key.money
tellraw @s {"translate":"keyconomy.withdraw.amount","fallback":"Withdrawing %s...","color":"green","with":[{"score":{"name":"@s","objective":"Withdraw"}}]}
function keyconomy:__private__/loops/withdraw