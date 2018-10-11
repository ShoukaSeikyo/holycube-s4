#const
scoreboard objectives add hc4-neg-bool dummy
scoreboard players set #HC4Void hc4-neg-bool 4

#config
##In which dimension the void in the Nether sends the Player to.
scoreboard objectives add hc4-void-n dummy
scoreboard players set HC4Void hc4-void-n 3
##In which dimension the void in the End sends the Player to.
scoreboard objectives add hc4-void-e dummy
scoreboard players set HC4Void hc4-void-e 2
##In which dimension the void in the Overworld sends the Player to.
scoreboard objectives add hc4-void-o dummy
scoreboard players set HC4Void hc4-void-o 1


execute unless score #HC4_Void#n hc4-config matches 0..3 run scoreboard players set #HC4_Void#n hc4-config 3
execute unless score #HC4_Void#e hc4-config matches 0..3 run scoreboard players set #HC4_Void#e hc4-config 2
execute unless score #HC4_Void#o hc4-config matches 0..3 run scoreboard players set #HC4_Void#o hc4-config 1
