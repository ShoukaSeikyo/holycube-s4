scoreboard players set #HC_Bed#tmp hc4.bed 100
scoreboard players add #HC_Bed#req hc4.bed 1
scoreboard players operation #HC_Bed#tmp hc4.bed *= #HC_Bed#req hc4.bed

execute if score #HC_Bed#tmp hc4.bed <= #HC_Bed#reqtmp hc4.bed run function holycube_bed:logic/getreq
