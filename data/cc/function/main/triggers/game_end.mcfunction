#End Clean Up

setblock 952 42 952 minecraft:structure_block[mode=load]{ignoreEntities:1b,author:"RedDemptr",posX:0,mode:"LOAD",posY:1,sizeX:48,posZ:0,integrity: 1.0f,x:952,name:"game:1",y:42,z:952,sizeY:48,sizeZ:48,} replace
setblock 952 41 952 minecraft:redstone_block replace
setblock 999 42 952 minecraft:redstone_block replace
setblock 997 42 997 minecraft:redstone_block replace
setblock 952 42 999 minecraft:redstone_block replace
fill 952 41 952 952 42 952 air
fill 999 42 952 999 43 952 air
fill 997 42 997 997 43 997 air
fill 952 42 999 952 43 999 air
kill @e[type=!player,tag=!permanent,x=1000,y=50,z=1000,distance=..100]
effect clear @a

bossbar set timer visible false

clear @a
scoreboard players set @e[type=marker,scores={pointTimerRed=1..}] pointTimerRed 0
scoreboard players set @e[type=marker,scores={pointTimerBlue=1..}] pointTimerBlue 0
scoreboard players set @e[type=marker,scores={goldProcess=1..}] goldProcess 0
tag @e[type=marker,tag=goldPresent] remove goldPresent
scoreboard players operation Timer rotateCubes = TimerSetting rotateCubes
scoreboard players set Phase rotateCubes 1
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:red_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:blue_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:gray_concrete
execute as @e[type=marker,tag=cube] at @s run fill ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 minecraft:white_concrete replace minecraft:black_concrete
tp @a -1000 31 -1000
worldborder set 10000
spawnpoint @a -1000 31 -1000
team leave *
scoreboard players set Red Points 0
scoreboard players set Blue Points 0
scoreboard players set Red calcPoints 0
scoreboard players set Blue calcPoints 0
scoreboard players set EntropyTime gameSettings 0
scoreboard objectives setdisplay sidebar
advancement grant @a[scores={winStreak=3..}] only cc:streak
tellraw @a {"text":"Thanks for playing!","color":"green"}
effect give @a minecraft:instant_health 1 10 true
gamemode adventure @a
scoreboard players set TeamsReady gameSettings 0
scoreboard players set DMTime gameSettings 0
scoreboard players set TimePassed gameSettings -1
scoreboard players set GameActive gameSettings 0
xp set @a 0 levels
xp set @a 0 points
