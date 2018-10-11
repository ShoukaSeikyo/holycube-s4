scoreboard players add #HC4_Void#e hc4-config 1
scoreboard players operation #HC4_Void#e hc4-config %= HC4Void hc4-neg-bool

execute if score #HC4_Void#e hc4-config matches 1 run tellraw @s [{"text":"Players in the End at -20 or below will be send to the Nether at 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 2 run tellraw @s [{"text":"Players in the End at -20 or below will be send to the Overworld at 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 3 run tellraw @s [{"text":"Players in the End at -20 or below will be send to the End at 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 0 run tellraw @s [{"text":"Players in the void won't be sent to another dimension","color":"red"}]
