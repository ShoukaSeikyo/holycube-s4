execute as @e[type=minecraft:zombie_pigman] store result score @s hc4.posY run data get entity @s Pos[1]
execute at @s as @e[type=minecraft:zombie_pigman,distance=0..60,sort=random,limit=1] run function holycube_blaze:summon
scoreboard players reset @e[type=minecraft:zombie_pigman] hc4.posY

scoreboard players remove #HC4-BlazeLimit hc4.blaze 1
execute if score #HC4-BlazeLimit hc4.blaze matches 1.. run function holycube_blaze:apply
