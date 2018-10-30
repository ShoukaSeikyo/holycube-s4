scoreboard players add #HC4_AFK#i hc4-config 1
scoreboard players operation #HC4_AFK#i hc4-config %= #HC4 hc4-neg-bool

execute if score #HC4_AFK#i hc4-config matches 1 run tellraw @s {"text":"Les joueurs gagneront en saturation lorsqu'ils seront AFK.","color":"green"}
execute if score #HC4_AFK#i hc4-config matches 0 run tellraw @s {"text":"Les joueurs peuvent mourir de faim lorsqu'ils seront AFK.","color":"red"}
