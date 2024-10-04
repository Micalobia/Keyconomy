advancement revoke @s only keyconomy:sell
scoreboard players set @s SellKeys 0
execute if entity @s[tag=key.no_sell] run return fail
scoreboard players set #key.total key.math 0
execute store result score #key.trial key.math run data get storage keyconomy:config trial_key
execute store result score #key.ominous key.math run data get storage keyconomy:config trial_key

execute store result score #key.value key.math run clear @s trial_key
scoreboard players operation #key.value key.math *= #key.trial key.math
scoreboard players operation #key.total key.math += #key.value key.math

execute store result score #key.value key.math run clear @s ominous_trial_key
scoreboard players operation #key.value key.math *= #key.ominous key.math
scoreboard players operation #key.total key.math += #key.value key.math

execute store result score #key.value key.math run clear @s paper[custom_data~{key.cash:1b,key.cash.amount:1}]
scoreboard players operation #key.total key.math += #key.value key.math

execute store result score #key.value key.math run clear @s paper[custom_data~{key.cash:1b,key.cash.amount:5}]
scoreboard players operation #key.value key.math *= #5 key.math
scoreboard players operation #key.total key.math += #key.value key.math

execute store result score #key.value key.math run clear @s paper[custom_data~{key.cash:1b,key.cash.amount:25}]
scoreboard players operation #key.value key.math *= #25 key.math
scoreboard players operation #key.total key.math += #key.value key.math

execute store result score #key.value key.math run clear @s paper[custom_data~{key.cash:1b,key.cash.amount:100}]
scoreboard players operation #key.value key.math *= #100 key.math
scoreboard players operation #key.total key.math += #key.value key.math

scoreboard players operation @s key.money += #key.total key.math
tellraw @s [{"text":"Sold for: ","color":"green"},{"score":{"name":"#key.total","objective":"key.math"},"color":"gold"}]