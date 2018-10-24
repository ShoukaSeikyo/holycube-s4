execute unless score #HC4 hc4.blaze matches 1.. run scoreboard players operation #HC4 hc4.blaze = #HC4_Blaze#t hc4-config
scoreboard players remove #HC4 hc4.blaze 1
execute if score #HC4 hc4.blaze matches 0 as @a[nbt={playerGameType:0,Dimension:-1}] run function holycube_blaze:check
