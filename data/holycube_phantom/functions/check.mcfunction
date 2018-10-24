execute as @s store result score #HC4-PhantomDiff hc4.phantom run difficulty
scoreboard players set #HC4-PhantomCount hc4.phantom 0
execute store result score #HC4-PhantomCount hc4.phantom at @s run effect give @e[type=minecraft:phantom,tag=hc4_phantom,distance=0..128] minecraft:absorption 1000000 1 true

scoreboard players set #HC4-PhantomLimit hc4.phantom 2
scoreboard players operation #HC4-PhantomLimit hc4.phantom *= #HC4-PhantomDiff hc4.phantom
scoreboard players operation #HC4-PhantomLimit hc4.phantom -= #HC4-PhantomCount hc4.phantom
execute if score #HC4-PhantomLimit hc4.phantom matches 1.. at @s run function holycube_phantom:apply
