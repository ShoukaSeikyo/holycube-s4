scoreboard players remove #HC4 hc4.phantom 1

execute if score #HC4 hc4.phantom matches ..0 as @r[nbt={Dimension:1}] run function holycube_phantom:check
execute unless score #HC4 hc4.phantom matches 0.. run scoreboard players set #HC4 hc4.phantom 1199
