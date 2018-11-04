execute unless score #HC_Bed#p hc4-config matches 0.. run scoreboard players set #HC_Bed#p hc4-config 33

scoreboard objectives add hc4.bed dummy
scoreboard players set #HC_Bed#cache hc4.bed 0

bossbar add hc4.bed [{"text":"Passage de la nuit","color":"gray"}]
bossbar set hc4.bed visible false
