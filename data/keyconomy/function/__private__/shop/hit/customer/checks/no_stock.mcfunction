execute unless score #key.stock key.math < #key.count key.math run return fail
tellraw @s {"translate":"keyconomy.errors.shop.no_stock","fallback":"This shop is out of stock!","color":"red"}
return 1