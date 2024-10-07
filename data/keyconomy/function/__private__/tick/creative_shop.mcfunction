execute store result score #key.temp key.math run data get storage keyconomy:config commands.shop
execute as @a[gamemode=!creative] run trigger CreativeShop set 0
execute if score #key.temp key.math matches 0 as @a[tag=!key.shop] run trigger CreativeShop set 0
execute if score #key.temp key.math matches 0 run scoreboard players enable @a[tag=key.shop,gamemode=creative] CreativeShop
execute if score #key.temp key.math matches 1 as @a[tag=key.no_shop] run trigger CreativeShop set 0
execute if score #key.temp key.math matches 1 run scoreboard players enable @a[tag=!key.no_shop,gamemode=creative] CreativeShop