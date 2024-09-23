execute unless score @s key.money < #key.price key.math run return fail
tellraw @s {"translate":"keyconomy.errors.shop.broke","fallback":"You cannot afford this!","color":"red"}
return 1