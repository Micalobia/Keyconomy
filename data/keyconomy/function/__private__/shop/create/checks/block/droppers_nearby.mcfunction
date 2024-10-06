execute unless predicate keyconomy:droppers run return fail
tellraw @s {"translate":"keyconomy.errors.shop.droppers_nearby","fallback":"There can't be droppers nearby!","color":"red"}
return 1