execute store result score #key.temp key.math run data get block ~ ~ ~ Items
execute if score #key.temp key.math matches 1.. run return fail
tellraw @s {"translate":"keyconomy.errors.shop.empty","fallback":"Barrel cannot be empty!","color":"red"}
return 1