#bossbar
bossbar add holycube:clock [{"text":""}]
bossbar set holycube:clock visible true
bossbar set holycube:clock max 23999

#config
## #HC4_CLOCK#p -> Show time to players with clock in hand
## #HC4_CLOCK#w -> Show time bar in nether and end
## #HC4_CLOCK#a -> Players show time to players in range
##       note: if hc4-clock-p is false(0), this option doesn't matter at all.
## #HC4_CLOCK#f -> Item frames with clock show time to players in range
execute unless score #HC4_CLOCK#p hc4-config matches 0..1 run scoreboard players set #HC4_CLOCK#p hc4-config 1
execute unless score #HC4_CLOCK#w hc4-config matches 0..1 run scoreboard players set #HC4_CLOCK#w hc4-config 1
execute unless score #HC4_CLOCK#a hc4-config matches 0..1 run scoreboard players set #HC4_CLOCK#a hc4-config 1
execute unless score #HC4_CLOCK#f hc4-config matches 0..1 run scoreboard players set #HC4_CLOCK#f hc4-config 1

#var
scoreboard objectives add hc4.clock dummy

#constants
scoreboard players set #HC4_CLOCK#h_div hc4.clock 1000
scoreboard players set #HC4_CLOCK#h_add hc4.clock 6000
scoreboard players set #HC4_CLOCK#h_mod hc4.clock 24000

scoreboard players set #HC4_CLOCK#m_mod hc4.clock 1000
scoreboard players set #HC4_CLOCK#m_mup hc4.clock 100000
scoreboard players set #HC4_CLOCK#m_div hc4.clock 1666666
