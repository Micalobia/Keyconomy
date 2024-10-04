execute store result score #key.temp key.math run data get storage keyconomy:config commands.withdraw
execute if score #key.temp key.math matches 0 as @a[tag=!key.withdraw] run trigger Withdraw set 0
execute if score #key.temp key.math matches 0 run scoreboard players enable @a[tag=key.withdraw] Withdraw
execute if score #key.temp key.math matches 1 run scoreboard players enable @a[tag=!key.no_withdraw] Withdraw