scoreboard players add #HC4_CLOCK#f hc4-config 1
scoreboard players operation #HC4_CLOCK#f hc4-config %= #HC4 hc4-neg-bool

execute if score #HC4_CLOCK#f hc4-config matches 1 run tellraw @s {"text":"Montrera l'heure aux joueurs autour des item frames.","color":"green"}
execute if score #HC4_CLOCK#f hc4-config matches 0 run tellraw @s {"text":"Ne montrera pas l'heure aux joueurs autour des item frames.","color":"red"}
