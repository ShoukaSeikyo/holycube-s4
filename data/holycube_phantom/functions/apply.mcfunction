execute if score #HC4-PhantomLimit hc4.phantom matches 1 at @s run summon minecraft:phantom ~10 ~30 ~ {Tags:["hc4_phantom","hc4_phantom_tmp"]}
execute if score #HC4-PhantomLimit hc4.phantom matches 2 at @s run summon minecraft:phantom ~-5 ~30 ~8 {Tags:["hc4_phantom","hc4_phantom_tmp"]}
execute if score #HC4-PhantomLimit hc4.phantom matches 3 at @s run summon minecraft:phantom ~-5 ~30 ~-8 {Tags:["hc4_phantom","hc4_phantom_tmp"]}

#execute if score #HC4-PhantomDiff hc4.phantom matches 1 run effect give @e[tag=hc4_phantom_tmp] minecraft:absorption 1000000 1
#execute if score #HC4-PhantomDiff hc4.phantom matches 2 run effect give @e[tag=hc4_phantom_tmp] minecraft:absorption 1000000 3
#execute if score #HC4-PhantomDiff hc4.phantom matches 3 run effect give @e[tag=hc4_phantom_tmp] minecraft:absorption 1000000 5
effect give @e[tag=hc4_phantom_tmp] minecraft:absorption 1000000 1
tag @e[tag=hc4_phantom_tmp] remove hc4_phantom_tmp

scoreboard players remove #HC4-PhantomLimit hc4.phantom 1
execute if score #HC4-PhantomLimit hc4.phantom matches 1.. run function holycube_phantom:apply
