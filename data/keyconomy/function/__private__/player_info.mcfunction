summon item_display ~ ~ ~ {Tags:["key.temp"],view_range:0}
loot replace entity @n[type=item_display,tag=key.temp,distance=..1] container.0 loot keyconomy:head
data modify storage keyconomy:data player set value {}
data modify storage keyconomy:data player.name set from entity @n[type=item_display,tag=key.temp] item.components.minecraft:profile.name
data modify storage keyconomy:data player.uuid set from entity @s UUID
kill @n[type=item_display,tag=key.temp,distance=..1]