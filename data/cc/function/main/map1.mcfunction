summon marker 10000 46 10000 {Tags:["cube", "middle"]}
execute at @e[type=marker,tag=middle] run summon marker ~ ~ ~-15 {Tags:["cube"]}
execute at @e[type=marker,tag=middle] run summon marker ~ ~ ~15 {Tags:["cube"]}
execute at @e[type=marker,tag=middle] run summon marker ~15 ~ ~ {Tags:["cube"]}
execute at @e[type=marker,tag=middle] run summon marker ~-15 ~ ~ {Tags:["cube"]}
#summon minecraft:marker 985 48.00 985 {Tags:["cube"]}
execute positioned 985 48 985 as @e[type=marker,limit=1] run scoreboard players set @s cloudType 3