# ItemControl

#up
execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~3 ~3 ~3 ~-3 ~3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1..}] minecraft:gold_block
#down
execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~3 ~-3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1}] minecraft:gold_block
#-xz
execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~-3 ~3 ~-3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1}] minecraft:gold_block

execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~3 ~3 ~3 ~3 ~-3 ~3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1}] minecraft:gold_block

#-x +z
execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~-3 ~3 ~3 ~-3 ~-3 ~3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1}] minecraft:gold_block

#+x -z
execute as @e[type=marker,tag=goldPresent] at @s store success score @s goldPlace run fill ~3 ~3 ~3 ~3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldPlace=1..}] at @s run give @a[distance=..10,scores={goldPlace=1}] minecraft:gold_block

scoreboard players set @e[type=marker] goldPlace 0

execute as @e[type=marker,tag=cube] unless block ~ ~2 ~ minecraft:gold_block run tag @s remove goldPresent
execute as @e[type=marker,tag=cube] if block ~ ~2 ~ minecraft:gold_block run tag @s add goldPresent
execute as @a[scores={goldPlace=1..},team=Red] at @s run scoreboard players set @e[type=marker,tag=cube,limit=1,sort=nearest] goldProcess 1
execute as @a[scores={goldPlace=1..},team=Blue] at @s run scoreboard players set @e[type=marker,tag=cube,limit=1,sort=nearest] goldProcess 2

execute as @e[type=marker,scores={goldProcess=1..2},tag=goldPresent] at @s store success score @s goldPlace run fill ~3 ~3 ~3 ~-3 ~3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldProcess=1..2},tag=goldPresent] at @s run give @p[scores={goldPlace=1..}] minecraft:gold_block
scoreboard players set @e[type=marker,scores={goldProcess=1..2},tag=goldPresent] goldProcess 0

#up
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~-3 ~3 ~-3 minecraft:air replace minecraft:gold_block
#down
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~3 ~-3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
#-xz
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~-3 ~3 ~-3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
#+xz
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~3 ~-3 ~3 minecraft:air replace minecraft:gold_block
#-x +z
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~-3 ~3 ~3 ~-3 ~-3 ~3 minecraft:air replace minecraft:gold_block
#+x -z
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] at @s run fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:red_concrete
scoreboard players set @e[type=marker,scores={goldProcess=1,blocksRed=0},tag=!goldPresent] goldProcess 0

#up
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~-3 ~3 ~-3 minecraft:air replace minecraft:gold_block
#down
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~3 ~-3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
#-xz
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~-3 ~3 ~-3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
#+xz
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~3 ~-3 ~3 minecraft:air replace minecraft:gold_block
#-x +z
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~-3 ~3 ~3 ~-3 ~-3 ~3 minecraft:air replace minecraft:gold_block
#+x -z
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~3 ~3 ~3 ~3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] at @s run fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:blue_concrete
scoreboard players set @e[type=marker,scores={goldProcess=2,blocksBlue=0},tag=!goldPresent] goldProcess 0

tag @e[type=marker,tag=cube,scores={cloudType=8..9}] add goldPresent
tag @e[type=marker,tag=cube,scores={cloudType=11..13}] add goldPresent
tag @e[type=marker,tag=cube,scores={cloudType=18}] add goldPresent
tag @e[type=marker,scores={goldProcess=1,blocksRed=9},tag=!goldPresent] add goldUpgrade

execute as @e[type=marker,scores={goldProcess=1},tag=goldUpgrade] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldProcess=1,entropyCycle=1..},tag=goldUpgrade] at @s run setblock ~ ~2 ~ minecraft:gold_block

tag @e[type=marker,scores={goldProcess=1,blocksRed=9},tag=goldUpgrade] add goldPresent
tag @e[type=marker,scores={goldProcess=1,blocksRed=9},tag=goldUpgrade] remove goldUpgrade
tag @e[type=marker,scores={goldProcess=2,blocksRed=9},tag=!goldPresent] add goldUpgrade

execute as @e[type=marker,scores={goldProcess=2},tag=goldUpgrade] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:gold_block
execute as @e[type=marker,scores={goldProcess=2,entropyCycle=1..},tag=goldUpgrade] at @s run setblock ~ ~2 ~ minecraft:gold_block

tag @e[type=marker,scores={goldProcess=2,blocksBlue=9},tag=goldUpgrade] add goldPresent
tag @e[type=marker,scores={goldProcess=2,blocksBlue=9},tag=goldUpgrade] remove goldUpgrade
scoreboard players set @a[scores={goldPlace=1..}] goldPlace 0
tag @e[type=marker,tag=cube,scores={cloudType=8..9}] remove goldPresent
tag @e[type=marker,tag=cube,scores={cloudType=11..13}] remove goldPresent
tag @e[type=marker,tag=cube,scores={cloudType=18}] remove goldPresent
execute as @e[tag=goldPresent,scores={entropyCycle=1..}] at @s if block ~ ~2 ~ minecraft:air run setblock ~ ~2 ~ minecraft:gold_block

# Controls item spawn delay and determines which team controls each cube.
# Advance spawn timer
scoreboard players add @e[type=marker,tag=cube] spawnItemS 1
scoreboard players add @e[type=marker,tag=cube] spawnItem 1
scoreboard players add @e[type=marker,tag=cube] spawnItemL 1
scoreboard players add @e[type=marker,tag=cube] spawnItemXL 1
scoreboard players add @e[type=marker,tag=redSpawnCloud] spawnItemS 1
scoreboard players add @e[type=marker,tag=blueSpawnCloud] spawnItemS 1
scoreboard players add @e[type=marker,tag=redSpawnCloud] spawnItemXS 1
scoreboard players add @e[type=marker,tag=blueSpawnCloud] spawnItemXS 1
scoreboard players add @a tpDelay 1
scoreboard players reset @a[scores={tpDelay=41..}] tpDelay
# Starts spawn process
tag @e[type=marker,tag=!goldPresent,scores={spawnItemXS=5}] add trySpawn
tag @e[type=marker,tag=!goldPresent,scores={spawnItemXS=10}] add trySpawn
tag @e[type=marker,tag=!goldPresent,scores={spawnItem=20}] add trySpawn
tag @e[type=marker,tag=!goldPresent,scores={spawnItemL=40}] add trySpawn
tag @e[type=marker,tag=!goldPresent,scores={spawnItemXL=80}] add trySpawn

 # Test for claimed blocks (GOLD)
execute as @e[type=marker,tag=goldPresent] at @s store result score @s blocksBlue if blocks -4 2 -11 -2 2 -9 ~-1 ~2 ~-1 masked
 # Test for claimed blocks (GOLD)
execute as @e[type=marker,tag=goldPresent] at @s store result score @s blocksRed if blocks -4 2 -15 -2 2 -13 ~-1 ~2 ~-1 masked

# Test for claimed blocks
execute as @e[type=marker,tag=trySpawn] at @s store result score @s blocksBlue if blocks -4 1 -11 -2 1 -9 ~-1 ~2 ~-1 masked
# Test for claimed blocks
execute as @e[type=marker,tag=trySpawn] at @s store result score @s blocksRed if blocks -4 1 -15 -2 1 -13 ~-1 ~2 ~-1 masked

# Reset spawn timer
scoreboard players set @e[type=marker,scores={spawnItemXS=6..}] spawnItemXS 0
scoreboard players set @e[type=marker,scores={spawnItemS=11..}] spawnItemS 0
scoreboard players set @e[type=marker,tag=cube,scores={spawnItem=21..}] spawnItem 0
scoreboard players set @e[type=marker,tag=cube,scores={spawnItemL=41..}] spawnItemL 0
scoreboard players set @e[type=marker,tag=cube,scores={spawnItemXL=81..}] spawnItemXL 0
tag @e[type=marker,tag=trySpawn] remove trySpawn
execute as @e[type=armor_stand,tag=display] at @s run tp @s ~ ~ ~ ~1 ~

#portal particles
execute as @e[scores={cloudType=12..13,entropyCycle=1..}] at @s run particle portal ~ ~4 ~ 0 2 0 1 10 force @a
#diamond glow
execute as @e[type=marker,tag=cube,scores={cloudType=10}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=!Spectators,dx=4,dy=0,dz=4] glowing 1 0 true
execute as @e[type=marker,tag=cube,scores={cloudType=18,spawnItem=20..}] at @s run function cc:loops/rng

execute as @e[type=marker,tag=cube,scores={cloudType=8}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"When captured, this cube will give your allies Strength and your foes Weakness.","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=9}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"When captured, this cube will give your allies Speed and your foes Slowness.","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=10}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"This cube will spawn diamonds every 4 seconds.","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=12..13}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"Stand in the center of this cube to teleport to the opposite corner!","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=15}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"TNT will remove color from all concrete within its blast radius!","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=17}] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival] actionbar [{"text":"[!] ","color":"red"},{"text":"You can use gold blocks to insta-capture and upgrade cubes!","color":"gold"},{"text":" [!]","color":"blue"}]
execute as @e[type=marker,tag=cube,scores={cloudType=18},tag=!hasArrow] at @s positioned ~-2 ~3 ~-2 run title @a[dx=4,dy=0,dz=4,gamemode=survival,tag=!hasArrow] actionbar [{"text":"[!] ","color":"red"},{"text":"You need an arrow to use this cube!","color":"gold"},{"text":" [!]","color":"blue"}]
tag @a[tag=hasArrow] remove hasArrow
