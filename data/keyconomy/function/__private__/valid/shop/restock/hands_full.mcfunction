execute unless predicate keyconomy:hands_full run return fail
tellraw @s {"translate":"keyconomy.errors.shop.hands_full","fallback":"You can't restock without an empty hand!","color":"red"}
return 1