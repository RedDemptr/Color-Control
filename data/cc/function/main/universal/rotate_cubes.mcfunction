# Controls the timing and actual process of the cubes rotating.
# Active during all gamemodes.
#

# TriggerCubes
scoreboard players remove Timer rotateCubes 1
execute if score Timer rotateCubes matches 1 as @e[type=marker,tag=cube] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:white_concrete replace minecraft:gold_block

execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 1 as @e[type=marker,tag=cube,scores={entropyCycle=1..}] at @s run function cc:triggers/rotate_cubes_x
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 1 run scoreboard players operation Timer rotateCubes = TimerSetting rotateCubes
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 1 run scoreboard players set Phase rotateCubes 2
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 1 run title @a actionbar {"text":"The cubes have rotated!","color":"gold","bold":1b}
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 1 as @a at @s run playsound minecraft:block.piston.extend block @s ~ ~ ~ 1 0.7

execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 2 as @e[type=marker,tag=cube,scores={entropyCycle=1}] at @s run function cc:triggers/rotate_cubes_z
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 2 run scoreboard players operation Timer rotateCubes = TimerSetting rotateCubes
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 2 run scoreboard players set Phase rotateCubes 1
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 2 run title @a actionbar {"text":"The cubes have rotated!","color":"gold","bold":1b}
execute if score Timer rotateCubes matches 1 if score Phase rotateCubes matches 2 as @a at @s run playsound minecraft:block.piston.extend block @s ~ ~ ~ 1 0.7

execute if score Timer rotateCubes matches 60 run title @a actionbar [{"text":"The cubes will rotate in ","color":"gold","bold":1b},{"text":"3...","color":"green"}]
execute if score Timer rotateCubes matches 60 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.5

execute if score Timer rotateCubes matches 40 run title @a actionbar [{"text":"The cubes will rotate in ","color":"gold","bold":1b},{"text":"2...","color":"green"}]
execute if score Timer rotateCubes matches 40 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.6

execute if score Timer rotateCubes matches 20 run title @a actionbar [{"text":"The cubes will rotate in ","color":"gold","bold":1b},{"text":"1...","color":"green"}]
execute if score Timer rotateCubes matches 20 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7
