execute if block ~ ~1 ~ #air run return fail
tellraw @s {"translate":"keyconomy.errors.shop.block_above","fallback":"There has to be air above the barrel!","color":"red"}
return 1