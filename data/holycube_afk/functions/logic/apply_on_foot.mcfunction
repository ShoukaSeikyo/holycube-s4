#pos
scoreboard players add @a[scores={hc4.afk=0..99}] hc4.afk 1

execute unless score @s hc4.ofkX = @s hc4.posX run scoreboard players set @s hc4.afk 0
execute unless score @s hc4.ofkY = @s hc4.posY run scoreboard players set @s hc4.afk 0
execute unless score @s hc4.ofkZ = @s hc4.posZ run scoreboard players set @s hc4.afk 0

scoreboard players operation @s hc4.ofkX = @s hc4.posX
scoreboard players operation @s hc4.ofkY = @s hc4.posY
scoreboard players operation @s hc4.ofkZ = @s hc4.posZ
