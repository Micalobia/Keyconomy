advancement revoke @s only keyconomy:creative_shop
scoreboard players operation @s MakeShop = @s CreativeShop
scoreboard players set @s CreativeShop 0
tag @s add key.shop.creative
function keyconomy:__private__/commands/shop
tag @s remove key.shop.creative