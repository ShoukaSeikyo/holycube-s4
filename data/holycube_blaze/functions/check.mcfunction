execute as @s store result score #HC4-BlazeDiff hc4.blaze run difficulty
scoreboard players set #HC4-BlazeCount hc4.blaze 0
execute store result score #HC4-BlazeCount hc4.blaze at @s run effect give @e[type=minecraft:blaze,tag=hc4_blaze,distance=0..128] minecraft:absorption 1000000 1 true

scoreboard players set #HC4-BlazeLimit hc4.blaze 2
scoreboard players operation #HC4-BlazeLimit hc4.blaze *= #HC4-BlazeDiff hc4.blaze
scoreboard players operation #HC4-BlazeLimit hc4.blaze -= #HC4-BlazeCount hc4.blaze
execute if score #HC4-BlazeLimit hc4.blaze matches 1.. at @s run function holycube_blaze:apply
