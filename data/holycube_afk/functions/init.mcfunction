#config

## #HC4_AFK#t -> Number of minutes before a player becomes AFK
## #HC4_AFK#s -> Players will gain saturation while AFK to not starve
## #HC4_AFK#i -> Players will gain a resistance effect of level 5 to become invulnerable while AFK. They will still move though.

execute unless score #HC4_AFK#t hc4-config matches 0.. run scoreboard players set #HC4_AFK#t hc4-config 5
execute unless score #HC4_AFK#m hc4-config matches 0..1 run scoreboard players set #HC4_AFK#m hc4-config 1
execute unless score #HC4_AFK#g hc4-config matches 0..1 run scoreboard players set #HC4_AFK#g hc4-config 1
execute unless score #HC4_AFK#s hc4-config matches 0..1 run scoreboard players set #HC4_AFK#s hc4-config 1
execute unless score #HC4_AFK#i hc4-config matches 0..1 run scoreboard players set #HC4_AFK#i hc4-config 1

scoreboard objectives add hc4.afk dummy

scoreboard objectives add hc4.ofkX dummy
scoreboard objectives add hc4.ofkY dummy
scoreboard objectives add hc4.ofkZ dummy
