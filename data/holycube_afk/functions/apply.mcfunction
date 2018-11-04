scoreboard players set #HC4_AFK#t_tmp hc4-config 12
scoreboard players operation #HC4_AFK#t_tmp hc4-config *= #HC4_AFK#t hc4-config

scoreboard players add @a[nbt={playerGameType:0}] hc4.afk 1
execute as @a[nbt={playerGameType:0},scores={hc4.vehicle=1}] run function holycube_afk:in_vehicle
execute as @a[nbt={playerGameType:0},scores={hc4.vehicle=0}] run function holycube_afk:on_foot
execute as @a[nbt=!{playerGameType:0}] run tag @s remove hc_afk

execute if score #HC4_AFK#m hc4-config matches 1 as @a[nbt={playerGameType:0},tag=hc_afk] if score @s hc4.afk < #HC4_AFK#t_tmp hc4-config run tellraw @a [{"color":"green","selector":"@s"}, {"color":"white","text":" n'est plus AFK."}]
execute as @a[nbt={playerGameType:0}] if score @s hc4.afk < #HC4_AFK#t_tmp hc4-config run tag @s remove hc_afk

execute if score #HC4_AFK#m hc4-config matches 1 if score #HC4_AFK#t hc4-config matches 1.. as @a[nbt={playerGameType:0},tag=!hc_afk] if score @s hc4.afk >= #HC4_AFK#t_tmp hc4-config run tellraw @a [{"color":"green","selector":"@s"}, {"color":"white","text":" est maintenant AFK."}]
execute as @a[nbt={playerGameType:0}] if score @s hc4.afk >= #HC4_AFK#t_tmp hc4-config run tag @s add hc_afk

execute unless score #HC4_AFK#t hc4-config matches 1.. as @a run tag @s remove hc_afk

execute if score #HC4_AFK#g hc4-config matches 1 run title @a[tag=hc_afk] times 0 1000000000 0
execute if score #HC4_AFK#g hc4-config matches 1 run title @a[tag=hc_afk] title {"text":"AFK"}
execute if score #HC4_AFK#s hc4-config matches 1 run effect give @a[tag=hc_afk] minecraft:saturation 1 0 true
execute if score #HC4_AFK#i hc4-config matches 1 run effect give @a[tag=hc_afk] minecraft:resistance 5 4 true
title @a[tag=!hc_afk] clear
