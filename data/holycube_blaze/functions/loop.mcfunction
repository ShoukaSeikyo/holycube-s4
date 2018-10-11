scoreboard players remove #HC4 hc4.blaze 1

execute if score #HC4 hc4.blaze matches ..0 as @a[nbt={Dimension:-1}] run function holycube_blaze:check
execute unless score #HC4 hc4.blaze matches 0.. run scoreboard players set #HC4 hc4.blaze 1199
