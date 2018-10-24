execute store result score #VW VW.posX run data get entity @s Pos[0] 1000000
execute store result score #VW VW.posY run data get entity @s Pos[1] 1000000
execute store result score #VW VW.posZ run data get entity @s Pos[2] 1000000
execute as @e[tag=!vw_magnet,tag=!vw_magneted,type=minecraft:item,distance=..5] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run tag @s add vw_magnet

execute as @e[tag=vw_magnet,tag=!vw_magneted] run function holycube_magnet:logic/pos

execute as @e[tag=vw_magnet,tag=!vw_magneted] store result entity @s Motion[0] double -0.0000001 run scoreboard players operation @s VW.posX -= #VW VW.posX
execute as @e[tag=vw_magnet,tag=!vw_magneted] store result entity @s Motion[1] double -0.0000001 run scoreboard players operation @s VW.posY -= #VW VW.posY
execute as @e[tag=vw_magnet,tag=!vw_magneted] store result entity @s Motion[2] double -0.0000001 run scoreboard players operation @s VW.posZ -= #VW VW.posZ
execute as @e[tag=vw_magnet,tag=!vw_magneted] run data merge entity @s {NoGravity:1}
tag @e[tag=vw_magnet] add vw_magneted

scoreboard players reset #VW VW.posX
scoreboard players reset #VW VW.posY
scoreboard players reset #VW VW.posZ
