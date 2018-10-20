execute if score #HC4_CLOCK#f hc4-config matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:clock"}}] at @s run tag @a[distance=0..15] add hc4.clock
execute if score #HC4_CLOCK#p hc4-config matches 1.. if score #HC4_CLOCK#a hc4-config matches 1.. as @a[nbt={Inventory:[{id:"minecraft:clock"}]}] at @s run tag @a[distance=0..15] add hc4.clock
execute if score #HC4_CLOCK#p hc4-config matches 1.. if score #HC4_CLOCK#a hc4-config matches ..0 run tag @a[tag=!hc4.clock,nbt={Inventory:[{id:"minecraft:clock"}]}] add hc4.clock
