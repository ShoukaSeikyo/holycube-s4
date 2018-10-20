scoreboard players set #HC_Bed#total hc4.bed 0
execute as @a[nbt={playerGameType:0,Dimension:0},tag=!hc_afk] run scoreboard players add #HC_Bed#total hc4.bed 1

scoreboard players set #HC_Bed#asleep hc4.bed 0

scoreboard players set @a[nbt={Sleeping:0b}] hc4.bed 0
execute as @a[nbt={Sleeping:1b}] store result score @s hc4.bed run data get entity @s SleepTimer

execute as @a[scores={hc4.bed=1},limit=1] run tellraw @a [{"color":"green","selector":"@a[scores={hc4.bed=1..}]"}, {"color":"white","text":" sont maintenant dans un lit."}]
execute as @a[scores={hc4.bed=30..}] run scoreboard players add #HC_Bed#asleep hc4.bed 1

execute unless score #HC_Bed#total hc4.bed = #HC_Bed#cache hc4.bed run function holycube_bed:logic/check

execute store result bossbar hc4.bed max run scoreboard players get #HC_Bed#req hc4.bed
execute store result bossbar hc4.bed value run scoreboard players get #HC_Bed#asleep hc4.bed

bossbar set hc4.bed name ["Passer la nuit [", {"score":{"name":"#HC_Bed#asleep","objective":"hc4.bed","color":"light_purple"}}," / ",{"score":{"name":"#HC_Bed#req","objective":"hc4.bed","color":"dark_green"}}, "]"]

execute if score #HC_Bed#asleep hc4.bed matches 1.. run bossbar set hc4.bed visible true
execute if score #HC_Bed#asleep hc4.bed matches ..0 run bossbar set hc4.bed visible false

execute store result score #HC_Bed#time hc4.bed run time query daytime

execute if score #HC_Bed#total hc4.bed matches 1.. if score #HC_Bed#req hc4.bed <= #HC_Bed#asleep hc4.bed run weather clear 0
execute if score #HC_Bed#total hc4.bed matches 1.. if score #HC_Bed#req hc4.bed <= #HC_Bed#asleep hc4.bed if score #HC_Bed#time hc4.bed matches 12550.. run time add 260
