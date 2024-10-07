execute store result score #key.temp key.math run data get storage keyconomy:config commands.sell
execute if score #key.temp key.math matches 0 as @a[tag=!key.sell] run trigger SellKeys set 0
execute if score #key.temp key.math matches 0 run scoreboard players enable @a[tag=key.sell] SellKeys
execute if score #key.temp key.math matches 1 as @a[tag=key.no_sell] run trigger SellKeys set 0
execute if score #key.temp key.math matches 1 run scoreboard players enable @a[tag=!key.no_sell] SellKeys