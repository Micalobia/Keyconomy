execute if entity @s[tag=!key.restocking] run return fail
tellraw @s {"translate":"keyconomy.errors.shop.already_restocking","fallback":"You're already restocking! Throw out the key to start a new one!","color":"red"}
return 1