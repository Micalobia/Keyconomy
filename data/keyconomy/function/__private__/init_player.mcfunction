advancement revoke @s only keyconomy:init_player
scoreboard players set @s key.money 0
scoreboard players add #key.id key.player.id 1
scoreboard players operation @s key.player.id = #key.id key.player.id
