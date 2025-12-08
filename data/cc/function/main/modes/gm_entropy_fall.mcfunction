# Causes cubes to fall when the EntropyTime score reaches 0.

tellraw @a {"text":"A cube has fallen!","color":"dark_red"}
playsound minecraft:item.shield.break master @p ~ ~ ~ 1 0.5
tag @e[type=marker,tag=cube,scores={entropyCycle=1}] add dropCube
scoreboard players set EntropyTime gameSettings 0
scoreboard players remove @e[type=marker,tag=cube,scores={entropyCycle=1..}] entropyCycle 1
tellraw @a [{"text":"The ","color":"red"},{"selector":"@e[type=marker,tag=cube,scores={entropyCycle=1},limit=1]","color":"yellow","bold":1b},{"text":" cubes will fall next!","color":"red"}]

# BlockFall
#>{"type":"impulse-chain","conditional":false,"auto":false}
# Clear gray concrete
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gray_concrete
execute as @e[type=marker,tag=dropCube] at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gray_concrete
execute as @e[type=marker,tag=dropCube] at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:black_concrete
execute as @e[type=marker,tag=dropCube] at @s positioned ~-996 ~ ~-1000 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:air replace minecraft:gold_block
# Top side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~2 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~2 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~2 ~-1 {Tags:["detector"]}
# Bottom side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~-2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~-2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~-2 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~-2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~-2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~-2 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~-2 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~-2 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~-2 ~-1 {Tags:["detector"]}
# +x side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~1 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~1 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~1 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~ ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~ ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~ ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~-1 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~-1 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~2 ~-1 ~-1 {Tags:["detector"]}
# -x side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~1 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~1 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~1 ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~ ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~ ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~ ~-1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~-1 ~1 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~-1 ~ {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-2 ~-1 ~-1 {Tags:["detector"]}
# +z side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~1 ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~1 ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~1 ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~ ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~ ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~ ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~-1 ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~-1 ~2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~-1 ~2 {Tags:["detector"]}
# -z side
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~ ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~ ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~ ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~1 ~-1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~ ~-1 ~-2 {Tags:["detector"]}
execute as @e[type=marker,tag=dropCube] at @s run summon marker ~-1 ~-1 ~-2 {Tags:["detector"]}

execute as @e[type=marker,tag=detector] at @s if block ~ ~ ~ minecraft:red_concrete run scoreboard players set @s blockColor 1
execute as @e[type=marker,tag=detector] at @s if block ~ ~ ~ minecraft:blue_concrete run scoreboard players set @s blockColor 2
execute as @e[type=marker,tag=detector] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players set @s blockColor 3
execute as @e[type=marker,tag=detector] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~-2 ~-2 ~-2 ~-2 ~2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~-2 ~-2 ~2 ~-2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~2 ~-2 ~-2 ~2 ~2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~-2 ~-2 ~-2 ~2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~2 ~2 ~2 ~2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~2 ~2 ~-2 ~2 ~2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~-2 ~2 ~2 ~-2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~-2 ~2 ~-2 ~-2 ~2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~2 ~2 ~2 ~-2 ~2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~2 ~2 ~-2 ~2 ~-2 ~-2 minecraft:air
execute as @e[type=marker,tag=dropCube] at @s run fill ~-2 ~2 ~2 ~-2 ~-2 ~2 minecraft:air
execute as @e[type=marker,tag=detector,scores={blockColor=1}] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:red_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=detector,scores={blockColor=2}] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:blue_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=detector,scores={blockColor=3}] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:white_concrete"},Time:1,DropItem:0b}

execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~1 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~ ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-1 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~1 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~ ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-1 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~1 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~ ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-1 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~1 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~ ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-1 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}

execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~2 ~1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~2 ~ {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~2 ~-1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~2 ~1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~2 ~ {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~2 ~-1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~1 ~2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~ ~2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-1 ~2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~1 ~2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~ ~2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-1 ~2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-2 ~1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-2 ~ {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~2 ~-2 ~-1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-2 ~1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-2 ~ {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-2 ~-2 ~-1 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~1 ~-2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~ ~-2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-1 ~-2 ~2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~1 ~-2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~ ~-2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}
execute as @e[type=marker,tag=dropCube] at @s run summon falling_block ~-1 ~-2 ~-2 {BlockState:{Name:"minecraft:black_concrete"},Time:1,DropItem:0b}

tag @e[tag=dropCube] remove dropCube
