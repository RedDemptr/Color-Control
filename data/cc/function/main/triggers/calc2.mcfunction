scoreboard players set Winner calcPoints -1
scoreboard players operation @e[type=marker,tag=storage,name=Red] calcPoints = Red Points
scoreboard players operation @e[type=marker,tag=storage,name=Blue] calcPoints = Blue Points
scoreboard players operation Winner calcPoints > @e[type=marker,tag=storage] calcPoints
scoreboard players operation @e[type=marker,tag=storage] calcPoints -= Winner calcPoints
scoreboard players set EndCount calcPoints 0
execute store result score EndCount calcPoints if entity @e[type=marker,tag=storage,scores={calcPoints=..-1}]
execute if score EndCount calcPoints matches 0 run function cc:triggers/win/draw_classic
execute if score EndCount calcPoints matches 1 as @e[type=marker,tag=storage,name=Red,scores={calcPoints=0}] run function cc:triggers/win/red_entro
execute if score EndCount calcPoints matches 1 as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=0}] run function cc:triggers/win/blue_entro
scoreboard players reset * calcPoints
