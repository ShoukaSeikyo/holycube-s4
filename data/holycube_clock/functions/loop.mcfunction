execute unless score #HC4_CLOCK#update hc4.clock matches 1.. run scoreboard players set #HC4_CLOCK#update hc4.clock 16
scoreboard players remove #HC4_CLOCK#update hc4.clock 1
execute if score #HC4_CLOCK#update hc4.clock matches 0 run function holycube_clock:update
