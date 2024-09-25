execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ hopper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~-1 ~ ~ hopper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ hopper[facing=west] run setblock ~1 ~ ~ air destroy
execute if block ~ ~ ~-1 hopper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~ hopper[facing=north] run setblock ~ ~ ~1 air destroy

execute if block ~ ~-1 ~ dropper[facing=up] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~1 ~ dropper[facing=down] run setblock ~ ~1 ~ air destroy
execute if block ~-1 ~ ~ dropper[facing=east] run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ dropper[facing=west] run setblock ~1 ~ ~ air destroy
execute if block ~ ~ ~-1 dropper[facing=south] run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~ dropper[facing=north] run setblock ~ ~ ~1 air destroy