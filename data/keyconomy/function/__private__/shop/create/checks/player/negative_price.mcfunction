execute if score @s MakeShop matches 1.. run return fail
tellraw @s {"translate":"keyconomy.errors.shop.negative_price","fallback":"Shop price cannot be negative!","color":"red"}
return 1