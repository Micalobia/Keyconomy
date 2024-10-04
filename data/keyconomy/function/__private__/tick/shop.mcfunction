execute store result score #key.temp key.math run data get storage keyconomy:config commands.shop
execute if score #key.temp key.math matches 0 as @a[tag=!key.shop] run trigger MakeShop set 0
execute if score #key.temp key.math matches 0 run scoreboard players enable @a[tag=key.shop] MakeShop
execute if score #key.temp key.math matches 1 run scoreboard players enable @a[tag=!key.no_shop] MakeShop