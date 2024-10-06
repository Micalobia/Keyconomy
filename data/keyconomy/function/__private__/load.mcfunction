scoreboard objectives add SellKeys trigger {"text":"Sell Keys","color":"gold","clickEvent":{"action":"run_command","value":"/trigger SellKeys"}}
scoreboard objectives add Withdraw trigger {"text":"Withdraw","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Withdraw"}}
scoreboard objectives add MakeShop trigger {"text":"Make Shop","color":"gold","clickEvent":{"action":"run_command","value":"/trigger MakeShop"}}

scoreboard objectives add key.money dummy {"text":"Money","color":"gold","bold":true}
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

execute unless data storage keyconomy:config trial_key run data modify storage keyconomy:config trial_key set value 25
execute unless data storage keyconomy:config ominous_key run data modify storage keyconomy:config ominous_key set value 100
execute unless data storage keyconomy:config max_stock run data modify storage keyconomy:config max_stock set value 5000
execute unless data storage keyconomy:config commands run data modify storage keyconomy:config commands set value {}
execute unless data storage keyconomy:config commands.sell run data modify storage keyconomy:config commands.sell set value 1b
execute unless data storage keyconomy:config commands.withdraw run data modify storage keyconomy:config commands.withdraw set value 1b
execute unless data storage keyconomy:config commands.shop run data modify storage keyconomy:config commands.shop set value 1b
data modify storage keyconomy:data macro set value {}

schedule function keyconomy:__private__/periodic 1s replace