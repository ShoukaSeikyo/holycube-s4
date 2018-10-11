execute as @a[scores={hc4.vehicle=1}] run function holycube_afk:logic/apply_in_vehicle
execute as @a[scores={hc4.vehicle=0}] run function holycube_afk:logic/apply_on_foot

tag @a[scores={hc4.afk=0}] remove hc_afk
tag @a[scores={hc4.afk=99..}] add hc_afk

title @a[tag=hc_afk] times 0 1000000000 0
title @a[tag=hc_afk] title {"text":"AFK"}
execute if score #HC4_AFK#s hc4-config matches 1 run effect give @a[tag=hc_afk] minecraft:saturation 1 0 true
execute if score #HC4_AFK#i hc4-config matches 1 run effect give @a[tag=hc_afk] minecraft:resistance 5 4 true
title @a[tag=!hc_afk] clear
