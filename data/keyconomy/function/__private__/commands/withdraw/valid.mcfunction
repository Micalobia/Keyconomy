execute unless score @s Withdraw matches ..0 run return 1
tellraw @s {"translate":"keyconomy.error.withdraw.negative","fallback":"Withdraw amount cannot be negative!","color":"red"}
scoreboard players set @s Withdraw 0
return fail