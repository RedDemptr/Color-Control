#* Controls the giving of items as well as the capture status of cubes.
#ID's:
#1: Planks | 2: Cobblestone | 3: Iron Ingot | 4: String
#5: Arrows | 6: Lapis | 7: GApples | 8: Strength Weakness
#9: Speed Slowness | 10: Diamonds | 11: Enchantment Table | 12: TP
#13: TP | 14: Pearls | 15: TNT | 16: Fire Charges
#17: Gold | 18: Tipped Arrows | 19: Leather*/

# SpawnItemBlue
execute as @e[type=marker,tag=blueSpawnCloud,scores={spawnItemS=10,cloudType=1}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:oak_planks 1
execute as @e[type=marker,tag=blueSpawnCloud,scores={spawnItemXS=5,cloudType=2}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:cobblestone 1
execute as @e[type=marker,tag=cube,scores={spawnItem=20,cloudType=3,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:iron_ingot 1
execute as @e[type=marker,tag=cube,scores={spawnItem=20,cloudType=4,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:string 1
execute as @e[type=marker,tag=cube,scores={spawnItem=20,cloudType=5,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:arrow 1
execute as @e[type=marker,tag=cube,scores={spawnItem=20,cloudType=6,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:lapis_lazuli 1
execute as @e[type=marker,tag=cube,scores={spawnItemL=40,cloudType=7,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:golden_apple 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=11,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run xp add @a[team=Blue,dx=4,dy=0,dz=4] 2 points
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=11,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run playsound entity.experience_orb.pickup player @a[team=Blue,dx=4,dy=0,dz=4] ~ ~ ~

execute as @e[type=marker,tag=cube,scores={cloudType=8,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=Blue,dx=4,dy=0,dz=4] strength 30 0 true
execute as @e[type=marker,tag=cube,scores={cloudType=9,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=Blue,dx=4,dy=0,dz=4] speed 30 0 true
execute as @e[type=marker,tag=cube,scores={cloudType=8,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=Red,dx=4,dy=0,dz=4] weakness 15 0 true
execute as @e[type=marker,tag=cube,scores={cloudType=9,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=Red,dx=4,dy=0,dz=4] slowness 15 0 true
execute as @e[type=marker,tag=cube,scores={spawnItemXL=80,cloudType=10,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:diamond 1
execute as @a[team=Blue] at @s positioned ~ ~-3 ~ as @e[type=marker,tag=cube,scores={cloudType=11,blocksBlue=9},distance=..5] run tag @s add bluePresent
execute at @e[type=marker,tag=bluePresent] run setblock ~ ~3 ~ enchanting_table replace
execute at @e[type=marker,tag=!bluePresent,scores={cloudType=11,blocksBlue=9}] run fill ~ ~3 ~ ~ ~3 ~ air replace enchanting_table
execute as @e[type=marker,tag=cube,scores={cloudType=11,blocksBlue=0,blocksRed=0}] at @s run fill ~ ~3 ~ ~ ~3 ~ air replace enchanting_table
tag @e[type=marker,tag=bluePresent] remove bluePresent
execute as @e[type=marker,tag=cube,scores={cloudType=12,blocksBlue=9}] at @s positioned ~ ~3 ~ run tp @a[team=Blue,scores={tpDelay=40..},distance=..1] 971 50 1029
execute as @e[type=marker,tag=cube,scores={cloudType=12,blocksBlue=9}] at @s positioned ~ ~3 ~ as @a[distance=..1] run playsound block.ender_chest.open block @a[team=Blue,scores={tpDelay=40..},distance=..1] 971 50 1029 1 1.5 1

execute as @e[type=marker,tag=cube,scores={cloudType=13,blocksBlue=9}] at @s positioned ~ ~3 ~ run tp @a[team=Blue,scores={tpDelay=40..},distance=..1] 1029 50 971
execute as @e[type=marker,tag=cube,scores={cloudType=13,blocksBlue=9}] at @s positioned ~ ~3 ~ as @a[distance=..1] run playsound block.ender_chest.open block @a[team=Blue,scores={tpDelay=40..},distance=..1] 971 50 1029 1 1.5 1

execute as @e[type=marker,tag=cube,scores={spawnItemL=40,cloudType=14,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:ender_pearl
execute as @e[type=marker,tag=cube,scores={spawnItemL=40,cloudType=15,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:tnt
execute as @e[type=marker,tag=cube,scores={spawnItem=20,cloudType=16,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:fire_charge
execute as @e[type=marker,tag=cube,scores={spawnItemL=40,cloudType=17,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:gold_ingot
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=19,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4] minecraft:leather

# Tipped Arrows
tag @a[nbt={Inventory:[{id:"minecraft:arrow"}]}] add hasArrow
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9}] at @s positioned ~-2 ~3 ~-2 run clear @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:arrow 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9,rng=-2}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}] 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9,rng=-1}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:weakness"}] 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9,rng=0}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9,rng=1}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:harming"}] 1
execute as @e[type=marker,tag=cube,scores={spawnItemS=10,cloudType=18,blocksBlue=9,rng=2}] at @s positioned ~-2 ~3 ~-2 run give @a[team=Blue,dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}] 1
tag @a[tag=hasArrow] remove hasArrow
