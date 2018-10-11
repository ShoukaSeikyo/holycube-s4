scoreboard players remove #HC4_AFK hc4.afk 1
execute if score #HC4_AFK hc4.afk matches -1 run function holycube_afk:logic/apply

execute if score #HC4_AFK hc4.afk matches ..-1 run scoreboard players set #HC4_AFK hc4.afk 99
