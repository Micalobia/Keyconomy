summon item_display ~ ~ ~ {Tags:["key.temp"],view_range:0}
loot replace entity @n[type=item_display,tag=key.temp,distance=..1] container.0 loot keyconomy:head
data modify storage keyconomy:data player set value {}
data modify storage keyconomy:data player.name set from entity @n[type=item_display,tag=key.temp] item.components.minecraft:profile.name
data modify storage keyconomy:data player.uuid set from entity @s UUID
kill @n[type=item_display,tag=key.temp,distance=..1]
tag @s add key.player_info
summon text_display ~ ~ ~ {text:'{"selector":"@p[tag=key.player_info]"}',Tags:["key.player_name"],view_range:0}
tag @s remove key.player_info
data modify storage keyconomy:data player.text set from entity @n[type=text_display,tag=key.player_name] text
kill @n[type=text_display,tag=key.player_name]