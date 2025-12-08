# A set of cubes will fall every 120 seconds.
# Every time a cube falls, teams will lose one point.
# If a team is at 0 points, they lose the game.

# ModeEntropy

# Entropy Timer.
scoreboard players add EntropyTime gameSettings 1
execute if score EntropyTime gameSettings matches 2300 run tellraw @a [{"text":"The ","color":"red"},{"selector":"@e[type=marker,tag=cube,scores={entropyCycle=1},limit=1]","color":"yellow","bold":1b},{"text":" cubes are about to fall!","color":"red"}]
execute if score EntropyTime gameSettings matches 2300 run playsound minecraft:item.shovel.flatten master @p ~ ~ ~ 1 0

execute if score EntropyTime gameSettings matches 2400.. run function cc:main/modes/gm_entropy_fall

execute as @e[type=marker,tag=dropCube] at @s positioned ~-2 ~3 ~-2 run advancement grant @a[dx=4,dy=0,dz=4] only cc:fall_entro
execute as @e[type=marker,tag=dropCube] at @s run kill @e[type=armor_stand,tag=display,y=60,distance=..3,limit=1,sort=nearest]
execute as @e[type=marker,tag=cube,scores={entropyCycle=0}] at @s positioned ~ ~2 ~ run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:air replace minecraft:gold_block

# Controls points gained from cubes.
scoreboard players add @e[type=marker,tag=cube,scores={blocksRed=9}] pointTimerRed 1
scoreboard players add @e[type=marker,tag=cube,scores={blocksBlue=9}] pointTimerBlue 1

scoreboard players add @e[type=marker,tag=PointDisplay] age 1
# Required to make the AEC visually update
execute as @e[tag=PointDisplay] run data merge entity @s {Air:1b}
execute as @e[tag=PointDisplay] run data merge entity @s {Air:0b}
# Must be after team assignment to avoid color flicker
execute as @e[type=marker,tag=cube,scores={pointTimerRed=900..}] at @s run function cc:triggers/display_point {team:"Red",color:"red"}
execute as @e[type=marker,tag=cube,scores={pointTimerBlue=900..}] at @s run function cc:triggers/display_point {team:"Blue",color:"blue"}

execute as @e[type=marker,tag=PointDisplay,scores={age=..40}] at @s run teleport @s ~ ~0.03 ~
tp @e[type=marker,tag=PointDisplay,scores={age=60..}] ~ ~-100 ~
scoreboard players set @e[type=marker,tag=cube,scores={pointTimerRed=900..}] pointTimerRed 0
scoreboard players set @e[type=marker,tag=cube,scores={pointTimerBlue=900..}] pointTimerBlue 0

# Controls points gained / lost from kills and deaths.
execute as @a[team=Red,scores={Kills=1}] run scoreboard players add Red Points 2
execute as @a[team=Blue,scores={Kills=1}] run scoreboard players add Blue Points 2
scoreboard players reset @a Kills
scoreboard players operation Red Points -= @a[team=Red] Deaths
scoreboard players operation Blue Points -= @a[team=Blue] Deaths
scoreboard players reset @a Deaths

execute if score Blue Points matches ..-1 run scoreboard players set Blue Points 0
execute if score Red Points matches ..-1 run scoreboard players set Red Points 0

execute if score HalfLength gameSettings matches 1.. run scoreboard players remove HalfLength gameSettings 1
execute if score HalfLength gameSettings matches 1 run function cc:triggers/lootbox_points

function cc:main/modes/countdown {calc:"calc2"}
