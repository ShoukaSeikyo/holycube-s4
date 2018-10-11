# Draw
#execute at @s run particle minecraft:block iron_block ~ ~ ~ 0.0 0.0 0.0 5.0 1000 force

# Position BH
execute as @s run function holycube_magnet:logic/motion
#execute as @e[type=minecraft:item,distance=0..5] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:logic/motion
execute as @e[type=minecraft:item,distance=0..5,tag=!VW_Magnet] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:logic/add_magnet

# Find distance
#tag @e[type=minecraft:item,distance=0..5] add VW_Magnet
scoreboard players operation @e[tag=VW_Magnet] hc4.motionX -= @s hc4.motionX
scoreboard players operation @e[tag=VW_Magnet] hc4.motionY -= @s hc4.motionY
scoreboard players operation @e[tag=VW_Magnet] hc4.motionZ -= @s hc4.motionZ

execute as @e[tag=VW_Magnet] store result entity @s Motion[0] double -0.0000001 run scoreboard players get @s hc4.motionX
execute as @e[tag=VW_Magnet] store result entity @s Motion[1] double -0.0000001 run scoreboard players get @s hc4.motionY
execute as @e[tag=VW_Magnet] store result entity @s Motion[2] double -0.0000001 run scoreboard players get @s hc4.motionZ
execute as @e[tag=VW_Magnet] run data merge entity @s {NoGravity:1}
