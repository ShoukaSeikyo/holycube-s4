execute unless score #HC4_Void#n hc4-config matches 0 as @a[nbt={Dimension:-1},scores={hc4.posY=..-20}] run function holycube_void:nether_out
execute unless score #HC4_Void#o hc4-config matches 0 as @a[nbt={Dimension:0},scores={hc4.posY=..-20}] run function holycube_void:overworld_out
execute unless score #HC4_Void#e hc4-config matches 0 as @a[nbt={Dimension:1},scores={hc4.posY=..-20}] run function holycube_void:end_out
