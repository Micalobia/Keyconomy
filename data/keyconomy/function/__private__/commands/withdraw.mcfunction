advancement revoke @s only keyconomy:withdraw
execute unless function keyconomy:__private__/commands/withdraw/valid run return fail
execute if score @s Withdraw > @s key.money run scoreboard players operation @s Withdraw = @s key.money
tellraw @s {"translate":"keyconomy.withdraw.amount","fallback":"Withdrawing %s...","color":"green","with":[{"score":{"name":"@s","objective":"Withdraw"},"color":"gold"}]}
scoreboard players operation @s key.money -= @s Withdraw
function keyconomy:__private__/commands/withdraw/loop
execute as @e[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{key.cash:1b}}}}] run data modify entity @s Motion set value [0d,0d,0d]