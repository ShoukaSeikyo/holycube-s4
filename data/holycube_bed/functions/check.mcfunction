scoreboard players operation #HC_Bed#reqtmp hc4.bed = #HC_Bed#total hc4.bed
scoreboard players operation #HC_Bed#reqtmp hc4.bed *= #HC_Bed#p hc4-config

scoreboard players set #HC_Bed#req hc4.bed 0
function holycube_bed:getreq

scoreboard players operation #HC_Bed#cache hc4.bed = #HC_Bed#total hc4.bed
bossbar set hc4.bed players @a
