scoreboard players add #HC4_CLOCK#p hc4-config 1
scoreboard players operation #HC4_CLOCK#p hc4-config %= #HC4 hc4-neg-bool

execute if score #HC4_CLOCK#p hc4-config matches 1 run tellraw @s {"text":"Will show time to players with clocks.","color":"green"}
execute if score #HC4_CLOCK#p hc4-config matches 0 run tellraw @s {"text":"Won't show time to players with clocks.","color":"red"}
