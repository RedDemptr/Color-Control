scoreboard players operation TimePassed gameSettings = GameLength gameSettings
scoreboard players set TickDivide gameSettings 20
scoreboard players operation RotationSeconds gameSettings = TimerSetting rotateCubes
scoreboard players operation RotationSeconds gameSettings /= TickDivide gameSettings
scoreboard players set MinuteDivide gameSettings 1200
scoreboard players operation TimeSeconds gameSettings = GameLength gameSettings
scoreboard players operation TimeSeconds gameSettings /= MinuteDivide gameSettings
scoreboard players set LengthDivide gameSettings 2
scoreboard players operation HalfLength gameSettings = GameLength gameSettings
scoreboard players operation HalfLength gameSettings /= LengthDivide gameSettings
scoreboard players set GameActive gameSettings 1
team add Red
team add Blue
team add Spectators
team join Spectators @a[team=!Red,team=!Blue,team=!Spectators]

bossbar add timer {"text":"Timer"}
bossbar set timer visible true
execute store result bossbar timer max run scoreboard players get GameLength gameSettings

spawnpoint @a[team=Red] 970 51 970
spawnpoint @a[team=Blue] 1030 51 1030
spawnpoint @a[team=Spectators] 1000 60 1000
gamemode survival @a
gamemode spectator @a[team=Spectators]
give @a[team=!Spectators] minecraft:wooden_pickaxe[enchantments={"vanishing_curse":1},unbreakable={},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-0.5,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value"}]] 1
scoreboard players set Red Lives 15
scoreboard players set Blue Lives 15
scoreboard players set Red Points 0
scoreboard players set Blue Points 0
scoreboard players operation Timer rotateCubes = TimerSetting rotateCubes
scoreboard players set @e[type=marker,x=985,y=48,z=970,distance=..2] cloudType 1
scoreboard players set @e[type=marker,x=1015,y=48,z=1030,distance=..2] cloudType 1
scoreboard players set @e[type=marker,x=970,y=48,z=985,distance=..2] cloudType 2
scoreboard players set @e[type=marker,x=1030,y=48,z=1015,distance=..2] cloudType 2
scoreboard players set @e[type=marker,x=985,y=47,z=985,distance=..2] cloudType 3
scoreboard players set @e[type=marker,x=1015,y=47,z=1015,distance=..2] cloudType 3
scoreboard players set @e[type=marker,x=1000,y=49,z=970,distance=..2] cloudType 4
scoreboard players set @e[type=marker,x=1000,y=49,z=1030,distance=..2] cloudType 4
scoreboard players set @e[type=marker,x=970,y=49,z=1000,distance=..2] cloudType 5
scoreboard players set @e[type=marker,x=1030,y=49,z=1000,distance=..2] cloudType 5
scoreboard players set @e[type=marker,x=970,y=48,z=1015,distance=..2] cloudType 6
scoreboard players set @e[type=marker,x=1030,y=48,z=985,distance=..2] cloudType 6
scoreboard players set @e[type=marker,x=1015,y=48,z=970,distance=..2] cloudType 7
scoreboard players set @e[type=marker,x=985,y=48,z=1030,distance=..2] cloudType 7
scoreboard players set @e[type=marker,x=1000,y=46,z=1015,distance=..2] cloudType 8
scoreboard players set @e[type=marker,x=1000,y=46,z=985,distance=..2] cloudType 8
scoreboard players set @e[type=marker,x=1015,y=46,z=1000,distance=..2] cloudType 9
scoreboard players set @e[type=marker,x=985,y=46,z=1000,distance=..2] cloudType 9
scoreboard players set @e[type=marker,x=1000,y=45,z=1000,distance=..2] cloudType 10
scoreboard players set @e[type=marker,x=1015,y=47,z=985,distance=..2] cloudType 11
scoreboard players set @e[type=marker,x=985,y=47,z=1015,distance=..2] cloudType 11
scoreboard players set @e[type=marker,x=1030,y=47,z=970,distance=..2] cloudType 12
scoreboard players set @e[type=marker,x=970,y=47,z=1030,distance=..2] cloudType 13
scoreboard players set @e[type=marker,x=1045,y=50,z=1000,distance=..2] cloudType 14
scoreboard players set @e[type=marker,x=955,y=50,z=1000,distance=..2] cloudType 14
scoreboard players set @e[type=marker,x=1045,y=48,z=985,distance=..2] cloudType 15
scoreboard players set @e[type=marker,x=955,y=48,z=1015,distance=..2] cloudType 15
scoreboard players set @e[type=marker,x=1000,y=50,z=1045,distance=..2] cloudType 16
scoreboard players set @e[type=marker,x=1000,y=50,z=955,distance=..2] cloudType 16
scoreboard players set @e[type=marker,x=985,y=49,z=1045,distance=..2] cloudType 17
scoreboard players set @e[type=marker,x=1015,y=49,z=955,distance=..2] cloudType 17
scoreboard players set @e[type=marker,x=1015,y=49,z=1045,distance=..2] cloudType 18
scoreboard players set @e[type=marker,x=985,y=49,z=955,distance=..2] cloudType 18
scoreboard players set @e[type=marker,x=1045,y=49,z=1015,distance=..2] cloudType 19
scoreboard players set @e[type=marker,x=955,y=49,z=985,distance=..2] cloudType 19
scoreboard players set @e[type=marker,scores={cloudType=3}] entropyCycle 16
scoreboard players set @e[type=marker,scores={cloudType=4}] entropyCycle 14
scoreboard players set @e[type=marker,scores={cloudType=5}] entropyCycle 15
scoreboard players set @e[type=marker,scores={cloudType=6}] entropyCycle 7
scoreboard players set @e[type=marker,scores={cloudType=7}] entropyCycle 1
scoreboard players set @e[type=marker,scores={cloudType=8}] entropyCycle 2
scoreboard players set @e[type=marker,scores={cloudType=9}] entropyCycle 3
scoreboard players set @e[type=marker,scores={cloudType=10}] entropyCycle 9
scoreboard players set @e[type=marker,scores={cloudType=11}] entropyCycle 10
scoreboard players set @e[type=marker,scores={cloudType=13}] entropyCycle 13
scoreboard players set @e[type=marker,scores={cloudType=14}] entropyCycle 5
scoreboard players set @e[type=marker,scores={cloudType=15}] entropyCycle 4
scoreboard players set @e[type=marker,scores={cloudType=16}] entropyCycle 12
scoreboard players set @e[type=marker,scores={cloudType=17}] entropyCycle 11
scoreboard players set @e[type=marker,scores={cloudType=18}] entropyCycle 6
scoreboard players set @e[type=marker,scores={cloudType=19}] entropyCycle 8
scoreboard players set @e[type=marker,tag=cube] blocksRed 0
scoreboard players set @e[type=marker,tag=cube] blocksBlue 0
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:red_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:blue_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:white_concrete replace minecraft:red_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:white_concrete replace minecraft:blue_concrete
kill @e[type=item]
kill @e[type=armor_stand,tag=display]
kill @e[type=block_display]
kill @e[type=item_display]

execute as @e[scores={cloudType=1}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:oak_planks"}}
execute as @e[scores={cloudType=2}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:cobblestone"}}
execute as @e[scores={cloudType=3}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:iron_ore"}}
execute as @e[scores={cloudType=4}] at @s run summon item_display ~ 60 ~ {NoGravity:1b,item:{id:"minecraft:string",count:1}}
execute as @e[scores={cloudType=5}] at @s run summon item_display ~ 60 ~ {NoGravity:1b,item:{id:"minecraft:arrow",count:1}}
execute as @e[scores={cloudType=6}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:lapis_block"}}
execute as @e[scores={cloudType=7}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:gold_block"}}
execute as @e[scores={cloudType=8}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:redstone_block"}}
execute as @e[scores={cloudType=9}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:cyan_concrete"}}
execute as @e[scores={cloudType=10}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:diamond_ore"}}
execute as @e[scores={cloudType=11}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:enchanting_table"}}
execute as @e[scores={cloudType=14}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:end_rod"}}
execute as @e[scores={cloudType=15}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:tnt"}}
execute as @e[scores={cloudType=16}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:magma_block"}}
execute as @e[scores={cloudType=17}] at @s run summon block_display ~ 60.5 ~ {NoGravity:1b,block_state:{Name:"minecraft:gold_ore"}}
execute as @e[scores={cloudType=18}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:purple_concrete"}}
execute as @e[scores={cloudType=19}] at @s run summon block_display ~ 60 ~ {NoGravity:1b,block_state:{Name:"minecraft:brown_wool"}}

tellraw @a[tag=debug] {"text":"start_game.mcfunction ran successfully.","color":"green"}
