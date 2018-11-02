scoreboard players set #HC4_Time#ticks hc4.longtick 20
scoreboard players operation #HC4_Time#ticks hc4.longtick *= #HC4_Time#mod hc-config
scoreboard players remove #HC4_Time#ticks hc4.longtick 20

execute store result score #HC4_Time#time hc4.longtick run time query daytime

gamerule doDaylightCycle false
