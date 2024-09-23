execute positioned ~-1 ~-1 ~-1 unless entity @e[type=hopper_minecart,dx=2,dz=2] run return fail
tellraw @s {"translate":"keyconomy.errors.shop.hopper_minecart_nearby","fallback":"There can't be hopper minecarts nearby!","color":"red"}
return 1