#Causes cubes to fall when the EntropyTime score reaches 0.

# Clear gray concrete
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gray_concrete
execute at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gray_concrete
execute at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:black_concrete
execute at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gold_block

# Detect concrete color
summon marker ~1 ~2 ~1 {Tags:["detector"]}
summon marker ~ ~2 ~1 {Tags:["detector"]}
summon marker ~-1 ~2 ~1 {Tags:["detector"]}
summon marker ~1 ~2 ~ {Tags:["detector"]}
summon marker ~ ~2 ~ {Tags:["detector"]}
summon marker ~-1 ~2 ~ {Tags:["detector"]}
summon marker ~1 ~2 ~-1 {Tags:["detector"]}
summon marker ~ ~2 ~-1 {Tags:["detector"]}
summon marker ~-1 ~2 ~-1 {Tags:["detector"]}
summon marker ~1 ~-2 ~1 {Tags:["detector"]}
summon marker ~ ~-2 ~1 {Tags:["detector"]}
summon marker ~-1 ~-2 ~1 {Tags:["detector"]}
summon marker ~1 ~-2 ~ {Tags:["detector"]}
summon marker ~ ~-2 ~ {Tags:["detector"]}
summon marker ~-1 ~-2 ~ {Tags:["detector"]}
summon marker ~1 ~-2 ~-1 {Tags:["detector"]}
summon marker ~ ~-2 ~-1 {Tags:["detector"]}
summon marker ~-1 ~-2 ~-1 {Tags:["detector"]}
summon marker ~2 ~1 ~1 {Tags:["detector"]}
summon marker ~2 ~1 ~ {Tags:["detector"]}
summon marker ~2 ~1 ~-1 {Tags:["detector"]}
summon marker ~2 ~ ~1 {Tags:["detector"]}
summon marker ~2 ~ ~ {Tags:["detector"]}
summon marker ~2 ~ ~-1 {Tags:["detector"]}
summon marker ~2 ~-1 ~1 {Tags:["detector"]}
summon marker ~2 ~-1 ~ {Tags:["detector"]}
summon marker ~2 ~-1 ~-1 {Tags:["detector"]}
summon marker ~-2 ~1 ~1 {Tags:["detector"]}
summon marker ~-2 ~1 ~ {Tags:["detector"]}
summon marker ~-2 ~1 ~-1 {Tags:["detector"]}
summon marker ~-2 ~ ~1 {Tags:["detector"]}
summon marker ~-2 ~ ~ {Tags:["detector"]}
summon marker ~-2 ~ ~-1 {Tags:["detector"]}
summon marker ~-2 ~-1 ~1 {Tags:["detector"]}
summon marker ~-2 ~-1 ~ {Tags:["detector"]}
summon marker ~-2 ~-1 ~-1 {Tags:["detector"]}
summon marker ~1 ~1 ~2 {Tags:["detector"]}
summon marker ~ ~1 ~2 {Tags:["detector"]}
summon marker ~-1 ~1 ~2 {Tags:["detector"]}
summon marker ~1 ~ ~2 {Tags:["detector"]}
summon marker ~ ~ ~2 {Tags:["detector"]}
summon marker ~-1 ~ ~2 {Tags:["detector"]}
summon marker ~1 ~-1 ~2 {Tags:["detector"]}
summon marker ~ ~-1 ~2 {Tags:["detector"]}
summon marker ~-1 ~-1 ~2 {Tags:["detector"]}
summon marker ~1 ~1 ~-2 {Tags:["detector"]}
summon marker ~ ~1 ~-2 {Tags:["detector"]}
summon marker ~-1 ~1 ~-2 {Tags:["detector"]}
summon marker ~1 ~ ~-2 {Tags:["detector"]}
summon marker ~ ~ ~-2 {Tags:["detector"]}
summon marker ~-1 ~ ~-2 {Tags:["detector"]}
summon marker ~1 ~-1 ~-2 {Tags:["detector"]}
summon marker ~ ~-1 ~-2 {Tags:["detector"]}
summon marker ~-1 ~-1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=detector,distance=..8] at @s if block ~ ~ ~ minecraft:red_concrete run scoreboard players set @s blockColor 1
execute as @e[type=marker,tag=detector,distance=..8] at @s if block ~ ~ ~ minecraft:blue_concrete run scoreboard players set @s blockColor 2
execute as @e[type=marker,tag=detector,distance=..8] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players set @s blockColor 3

# Summon falling blocks
execute at @e[type=marker,tag=detector,distance=..8] run setblock ~ ~ ~ minecraft:air
fill ~-2 ~-2 ~-2 ~-2 ~-2 ~2 minecraft:air
fill ~-2 ~-2 ~-2 ~2 ~-2 ~-2 minecraft:air
fill ~-2 ~2 ~-2 ~-2 ~2 ~2 minecraft:air
fill ~-2 ~2 ~-2 ~2 ~2 ~-2 minecraft:air
fill ~-2 ~-2 ~-2 ~-2 ~2 ~-2 minecraft:air
fill ~2 ~2 ~2 ~2 ~2 ~-2 minecraft:air
fill ~2 ~2 ~2 ~-2 ~2 ~2 minecraft:air
fill ~2 ~-2 ~2 ~2 ~-2 ~-2 minecraft:air
fill ~2 ~-2 ~2 ~-2 ~-2 ~2 minecraft:air
fill ~2 ~2 ~2 ~2 ~-2 ~2 minecraft:air
fill ~2 ~2 ~-2 ~2 ~-2 ~-2 minecraft:air
fill ~-2 ~2 ~2 ~-2 ~-2 ~2 minecraft:air
execute at @e[type=marker,tag=detector,distance=..8,scores={blockColor=1}] run summon falling_block ~ ~ ~ {BlockState:{Name:"red_concrete"},Time:1,DropItem:0b}
execute at @e[type=marker,tag=detector,distance=..8,scores={blockColor=2}] run summon falling_block ~ ~ ~ {BlockState:{Name:"blue_concrete"},Time:1,DropItem:0b}
execute at @e[type=marker,tag=detector,distance=..8,scores={blockColor=3}] run summon falling_block ~ ~ ~ {BlockState:{Name:"white_concrete"},Time:1,DropItem:0b}

summon falling_block ~2 ~2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~1 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~ ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-1 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~1 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~ ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-1 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~1 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~ ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-1 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~1 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~ ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-1 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~2 ~1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~2 ~ {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~2 ~-1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~2 ~1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~2 ~ {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~2 ~-1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~1 ~2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~ ~2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-1 ~2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~1 ~2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~ ~2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-1 ~2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-2 ~1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-2 ~ {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~2 ~-2 ~-1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-2 ~1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-2 ~ {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-2 ~-2 ~-1 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~1 ~-2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~ ~-2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-1 ~-2 ~2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~1 ~-2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~ ~-2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}
summon falling_block ~-1 ~-2 ~-2 {BlockState:{Name:"black_concrete"},Time:1,DropItem:0b}

tag @s remove dropCube

tellraw @a[tag=debug] {"text":"entropy_fall.mcfunction ran successfully.","color":"green"}
