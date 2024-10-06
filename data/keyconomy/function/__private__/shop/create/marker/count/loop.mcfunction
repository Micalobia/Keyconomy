execute store result score #key.temp key.math run data get storage keyconomy:data temp[-1].count 1
scoreboard players operation #key.barrel.count key.math += #key.temp key.math
data remove storage keyconomy:data temp[-1]
execute store result score #key.temp key.math run data get storage keyconomy:data temp
execute if score #key.temp key.math matches 1.. run return run function keyconomy:__private__/shop/create/marker/count/loop
return run scoreboard players get #key.barrel.count key.math