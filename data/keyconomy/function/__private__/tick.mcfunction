scoreboard players enable @a[tag=!key.no_sell] SellKeys
scoreboard players enable @a[tag=!key.no_shop] MakeShop
scoreboard players enable @a[tag=!key.no_withdraw] Withdraw

execute as @e[type=marker,tag=key.shop] at @s positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=hopper_minecart,dx=2,dz=2] run damage @s 10000