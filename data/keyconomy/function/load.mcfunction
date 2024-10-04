scoreboard objectives add SellKeys trigger {"text":"Sell Keys","color":"gold","clickEvent":{"action":"run_command","value":"/trigger SellKeys"}}
scoreboard objectives add Withdraw trigger {"text":"Withdraw","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Withdraw"}}
scoreboard objectives add MakeShop trigger {"text":"Make Shop","color":"gold","clickEvent":{"action":"run_command","value":"/trigger MakeShop"}}

scoreboard objectives add key.money dummy {"text":"Money","color":"gold","bold":true}
scoreboard objectives add key.config dummy
scoreboard objectives add key.math dummy
scoreboard objectives add key.shop.id dummy
scoreboard objectives add key.player.id dummy
scoreboard objectives add key.timer dummy

scoreboard objectives add key.dropped minecraft.custom:minecraft.drop
scoreboard objectives add key.barrel_broken minecraft.mined:minecraft.barrel

scoreboard players add #key.id key.player.id 0
scoreboard players add #key.id key.shop.id 0

scoreboard players set #5 key.math 5
scoreboard players set #25 key.math 25
scoreboard players set #100 key.math 100

execute unless data storage keyconomy:data config run data modify storage keyconomy:data config merge value {trial_key:25,ominous_key:100,max_stock:2673}
execute store result score #key.trial key.config run data get storage keyconomy:data config.trial_key
execute store result score #key.ominous key.config run data get storage keyconomy:data config.ominous_key
execute store result score #key.max_stock key.config run data get storage keyconomy:data config.max_stock
data modify storage keyconomy:data macro set value {}

schedule function keyconomy:periodic 1s replace