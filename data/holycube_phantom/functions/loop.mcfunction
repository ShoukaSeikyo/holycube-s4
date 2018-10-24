execute unless score #HC4 hc4.phantom matches 1.. run scoreboard players operation #HC4 hc4.phantom = #HC4_Phantom#t hc4-config
scoreboard players remove #HC4 hc4.phantom 1
execute if score #HC4 hc4.phantom matches 0 as @a[nbt={playerGameType:0,Dimension:1}] run function holycube_phantom:check
