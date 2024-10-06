execute positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=key.shop,distance=..0.1] run return fail
tellraw @s {"translate":"keyconomy.errors.shop.already_exists","fallback":"A shop already exists there!","color":"red"}
return 1