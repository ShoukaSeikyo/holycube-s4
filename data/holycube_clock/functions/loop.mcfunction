scoreboard players remove #HC4_CLOCK#update hc4.clock 1
execute if score #HC4_CLOCK#update hc4.clock matches -1 run function holycube_clock:logic/update

execute if score #HC4_CLOCK#update hc4.clock matches ..-1 run scoreboard players set #HC4_CLOCK#update hc4.clock 15
