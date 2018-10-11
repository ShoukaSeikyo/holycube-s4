execute store result score #HC4_CLOCK#time hc4.clock run time query daytime

scoreboard players operation #HC4_CLOCK#timeH hc4.clock = #HC4_CLOCK#time hc4.clock
scoreboard players operation #HC4_CLOCK#timeH hc4.clock += #HC4_CLOCK#h_add hc4.clock
scoreboard players operation #HC4_CLOCK#timeH hc4.clock %= #HC4_CLOCK#h_mod hc4.clock
scoreboard players operation #HC4_CLOCK#timeH hc4.clock /= #HC4_CLOCK#h_div hc4.clock

scoreboard players operation #HC4_CLOCK#timeM hc4.clock = #HC4_CLOCK#time hc4.clock
scoreboard players operation #HC4_CLOCK#timeM hc4.clock %= #HC4_CLOCK#m_mod hc4.clock
scoreboard players operation #HC4_CLOCK#timeM hc4.clock *= #HC4_CLOCK#m_mup hc4.clock
scoreboard players operation #HC4_CLOCK#timeM hc4.clock /= #HC4_CLOCK#m_div hc4.clock

execute store result bossbar holycube:clock value run time query daytime

execute if score #HC4_CLOCK#timeM hc4.clock matches 0..9 run bossbar set holycube:clock name [{"score":{"name":"#HC4_CLOCK#timeH","objective":"hc4.clock"}}, ":", "0", {"score":{"name":"#HC4_CLOCK#timeM","objective":"hc4.clock"}}]
execute if score #HC4_CLOCK#timeM hc4.clock matches 10.. run bossbar set holycube:clock name [{"score":{"name":"#HC4_CLOCK#timeH","objective":"hc4.clock"}}, ":", {"score":{"name":"#HC4_CLOCK#timeM","objective":"hc4.clock"}}]

execute if score #HC4_CLOCK#time hc4.clock matches 0..11999 run bossbar set holycube:clock color yellow
execute if score #HC4_CLOCK#time hc4.clock matches 12000..12999 run bossbar set holycube:clock color blue
execute if score #HC4_CLOCK#time hc4.clock matches 13000..22999 run bossbar set holycube:clock color purple
execute if score #HC4_CLOCK#time hc4.clock matches 23000.. run bossbar set holycube:clock color blue

#Add tag to players
tag @a[tag=hc4.clock] remove hc4.clock

execute if score #HC4_CLOCK#w hc4-config matches 1.. run function holycube_clock:logic/show_without_worlds
execute if score #HC4_CLOCK#w hc4-config matches ..0 run function holycube_clock:logic/show_with_worlds

bossbar set holycube:clock players @a[tag=hc4.clock]
