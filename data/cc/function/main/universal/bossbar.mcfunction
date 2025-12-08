#timer
scoreboard players operation min redMain = TimePassed gameSettings
scoreboard players operation min redMain /= #1200 redMain
scoreboard players operation minTicks redMain = min redMain
scoreboard players operation minTicks redMain *= #1200 redMain
scoreboard players operation sec redMain = TimePassed gameSettings
scoreboard players operation sec redMain -= minTicks redMain
scoreboard players operation sec redMain /= #20 redMain

execute store result bossbar minecraft:timer value run scoreboard players get TimePassed gameSettings
execute if score TimePassed gameSettings matches 1.. if score sec redMain matches 10.. run bossbar set timer name [{"score":{"name":"min","objective":"redMain"},"color":"yellow"},{"text":":"},{"score":{"name":"sec","objective":"redMain"}}]
execute if score TimePassed gameSettings matches 1.. if score sec redMain matches ..9 run bossbar set timer name [{"score":{"name":"min","objective":"redMain"},"color":"yellow"},{"text":":0"},{"score":{"name":"sec","objective":"redMain"}}]
