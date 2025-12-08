scoreboard players set Winner calcPoints -1
scoreboard players operation @e[type=marker,tag=storage,name=Red] calcPoints = Red Lives
scoreboard players operation @e[type=marker,tag=storage,name=Blue] calcPoints = Blue Lives
scoreboard players operation Winner calcPoints > @e[type=marker,tag=storage] calcPoints
scoreboard players operation @e[type=marker,tag=storage] calcPoints -= Winner calcPoints
scoreboard players set EndCount calcPoints 0
execute store result score EndCount calcPoints if entity @e[type=marker,tag=storage,scores={calcPoints=..-1}]
execute if score EndCount calcPoints matches 0 run function cc:triggers/win/draw_dm
execute if score EndCount calcPoints matches 1 as @e[type=marker,tag=storage,name=Red,scores={calcPoints=0}] run function cc:main/triggers/red_windm
execute if score EndCount calcPoints matches 1 as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=0}] run function cc:main/triggers/blue_windm
scoreboard players reset * calcPoints
