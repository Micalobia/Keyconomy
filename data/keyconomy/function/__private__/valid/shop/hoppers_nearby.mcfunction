execute unless predicate keyconomy:hoppers run return fail
tellraw @s {"translate":"keyconomy.errors.shop.hoppers_nearby","fallback":"There can't be hoppers nearby!","color":"red"}
return 1