scoreboard players add #HC4_AFK#i hc4-config 1
scoreboard players operation #HC4_AFK#i hc4-config %= #HC4 hc4-neg-bool

execute if score #HC4_AFK#i hc4-config matches 1 run tellraw @s {"text":"Players will be invulnerable while AFK","color":"green"}
execute if score #HC4_AFK#i hc4-config matches 0 run tellraw @s {"text":"Players will take damage while AFK","color":"red"}
