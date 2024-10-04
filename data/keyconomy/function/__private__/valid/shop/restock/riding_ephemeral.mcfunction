execute unless predicate keyconomy:riding_ephemeral run return fail
tellraw @s {"translate":"keyconomy.errors.shop.riding_ephemeral","fallback":"You can't restock while riding something with an inventory!","color":"red"}
return 1