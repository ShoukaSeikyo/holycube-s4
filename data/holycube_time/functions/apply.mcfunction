execute unless score #HC4_Time#ticks hc4.longtick matches -20.. run function holycube_time:reset
execute if score #HC4_Time#ticks hc4.longtick matches -1 run gamerule doDaylightCycle true

scoreboard players remove #HC4_Time#ticks hc4.longtick 1
