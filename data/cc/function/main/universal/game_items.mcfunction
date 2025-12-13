#* Controls the giving of items as well as the capture status of cubes.
#ID's:
#1: Planks | 2: Cobblestone | 3: Iron Ingot | 4: String
#5: Arrows | 6: Lapis | 7: GApples | 8: Strength Weakness
#9: Speed Slowness | 10: Diamonds | 11: Enchantment Table | 12: TP
#13: TP | 14: Pearls | 15: TNT | 16: Fire Charges
#17: Gold | 18: Tipped Arrows | 19: Leather*/

# SpawnItemRed
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"enchanting_table"}},scores={spawnItemS=10,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run xp add @a[team=$(team),dx=4,dy=0,dz=4] 2 points
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"enchanting_table"}},scores={spawnItemS=10,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run playsound entity.experience_orb.pickup player @a[team=$(team),dx=4,dy=0,dz=4] ~ ~ ~

$execute as @e[type=marker,tag=cube,nbt={data:{"item":"redstone_block"}},scores={blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=$(team),dx=4,dy=0,dz=4] strength 30 0 true
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"cyan_concrete"}},scores={blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=$(team),dx=4,dy=0,dz=4] speed 30 0 true
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"redstone_block"}},scores={blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=$(other_team),dx=4,dy=0,dz=4] weakness 15 0 true
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"cyan_concrete"}},scores={blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run effect give @a[team=$(other_team),dx=4,dy=0,dz=4] slowness 15 0 true
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"diamond"}},scores={spawnItemXL=80,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:diamond 1
$execute as @a[team=$(team)] at @s positioned ~ ~-3 ~ as @e[type=marker,tag=cube,nbt={data:{"item":"enchanting_table"}},scores={blocksRed=9},distance=..5] at @s positioned ~ ~3 ~ run tag @s add redPresent

execute at @e[type=marker,tag=redPresent] run setblock ~ ~3 ~ enchanting_table replace
execute at @e[type=marker,tag=!redPresent,nbt={data:{"item":"enchanting_table"}},scores={blocksRed=9}] run fill ~ ~3 ~ ~ ~3 ~ air replace enchanting_table
execute as @e[type=marker,tag=cube,nbt={data:{"item":"enchanting_table"}},scores={blocksBlue=0,blocksRed=0}] at @s run fill ~ ~3 ~ ~ ~3 ~ air replace enchanting_table
tag @e[type=marker,tag=redPresent] remove redPresent

$execute as @e[type=marker,tag=cube,nbt={data:{"item":"ender_chest"}},scores={blocksRed=9}] at @s positioned ~ ~3 ~ run teleport @a[team=$(team),scores={tpDelay=40..},distance=..1] 971 50 1029
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"ender_chest"}},scores={blocksRed=9}] at @s positioned ~ ~3 ~ as @a[distance=..1] run playsound minecraft:block.ender_chest.open block @a[team=$(team),scores={tpDelay=40..},distance=..1] 971 50 1029 1 1 1

$execute as @e[type=marker,tag=cube,nbt={data:{"item":"ender_chest"}},scores={blocksRed=9}] at @s positioned ~ ~3 ~ run teleport @a[team=$(team),scores={tpDelay=40..},distance=..1] 1029 50 971
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"ender_chest"}},scores={blocksRed=9}] at @s positioned ~ ~3 ~ run playsound block.ender_chest.open block @a[team=$(team),scores={tpDelay=40..},distance=..1] 971 50 1029 1 1 1

$execute as @e[type=marker,tag=cube,nbt={data:{"item":"ender_pearl"}},scores={spawnItemL=40,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:ender_pearl
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"tnt"}},scores={spawnItemL=40,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:tnt
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"fire_charge"}},scores={spawnItem=20,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:fire_charge
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"gold_ingot"}},scores={spawnItemL=40,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:gold_ingot
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"leather"}},scores={spawnItemS=10,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4] minecraft:leather

# Tipped Arrows
tag @a[nbt={Inventory:[{id:"minecraft:arrow"}]}] add hasArrow
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9}] at @s positioned ~-2 ~3 ~-2 run clear @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:arrow 1
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9,rng=-2}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}] 1
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9,rng=-1}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:weakness"}] 1
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9,rng=0}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 1
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9,rng=1}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:harming"}] 1
$execute as @e[type=marker,tag=cube,nbt={data:{"item":"arrow"}},scores={spawnItemS=10,blocksRed=9,rng=2}] at @s positioned ~-2 ~3 ~-2 run give @a[team=$(team),dx=4,dy=0,dz=4,tag=hasArrow] minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}] 1 
tag @a[tag=hasArrow] remove hasArrow
