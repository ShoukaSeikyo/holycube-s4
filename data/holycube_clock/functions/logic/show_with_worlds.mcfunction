#Update World
execute as @a store result score @s hc4.world run data get entity @s Dimension
execute as @e[type=minecraft:item_frame] store result score @s hc4.world run data get entity @s Dimension

execute if score #HC4_CLOCK#f hc4-config matches 1.. as @e[scores={hc4.world=0},type=minecraft:item_frame,nbt={Item:{id:"minecraft:clock"}}] at @s run tag @a[distance=0..15] add hc4.clock
execute if score #HC4_CLOCK#p hc4-config matches 1.. if score HC4Clock hc4-clock-a matches 1.. as @a[scores={hc4.world=0},nbt={Inventory:[{id:"minecraft:clock"}]}] at @s run tag @a[distance=0..15] add hc4.clock
execute if score #HC4_CLOCK#p hc4-config matches 1.. if score HC4Clock hc4-clock-a matches ..0 run tag @a[tag=!hc4.clock,scores={hc4.world=0},nbt={Inventory:[{id:"minecraft:clock"}]}] add hc4.clock
