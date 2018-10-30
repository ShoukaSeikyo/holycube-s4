scoreboard players add #HC4_Void#e hc4-config 1
scoreboard players operation #HC4_Void#e hc4-config %= HC4Void hc4-neg-bool

execute if score #HC4_Void#e hc4-config matches 1 run tellraw @s [{"text":"Les joueurs dans l'End à la couche -20 ou moins seront envoyés au Nether à la couche 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 2 run tellraw @s [{"text":"Les joueurs dans l'End à la couche -20 ou moins seront envoyés à l'Overworld à la couche 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 3 run tellraw @s [{"text":"Les joueurs dans l'End à la couche -20 ou moins seront envoyés à l'End à la couche 285","color":"green"}]
execute if score #HC4_Void#e hc4-config matches 0 run tellraw @s [{"text":"Les joueurs dans le void ne seront pas envoyés dans une autre dimension","color":"red"}]
