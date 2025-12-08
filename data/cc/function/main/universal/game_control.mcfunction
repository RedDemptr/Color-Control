#*Active whenever a game is running, independent of game mode.
#Keeps cubes intact and handles capturing, as well as a number of
#various

# This chain controls the physical environment/level and keeps it intact.
# HandleGame

kill @e[type=item,nbt={Item:{id:"minecraft:white_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:enchanting_table"}}]

execute as @a[team=Spectators,gamemode=spectator] at @s unless entity @s[x=1000,y=50,z=1000,distance=..200] run tp @s 1000 50 1000

effect give @a[team=!Spectators] saturation 10 5 true

# Cube stuff
	# Prevents players from breaking black concrete.
execute as @e[type=marker,tag=cube,scores={entropyCycle=1..}] at @s run function cc:loops/border
	# Controls block capturing.
scoreboard players add @a[scores={brokeRConcrete=1..}] brokeWConcrete 1
scoreboard players add @a[scores={brokeBConcrete=1..}] brokeWConcrete 1
scoreboard players reset @a[scores={brokeRConcrete=1..}] brokeRConcrete
scoreboard players reset @a[scores={brokeBConcrete=1..}] brokeBConcrete
execute as @a[team=Blue,scores={brokeWConcrete=1..}] at @s as @e[type=marker,tag=cube,limit=1,sort=nearest] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_concrete replace minecraft:air
execute as @a[team=Red,scores={brokeWConcrete=1..}] at @s as @e[type=marker,tag=cube,limit=1,sort=nearest] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_concrete replace minecraft:air
scoreboard players reset @a[scores={brokeWConcrete=1..}] brokeWConcrete
execute as @e[type=marker,tag=cube,scores={entropyCycle=1..}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:white_concrete replace minecraft:air
execute as @e[type=marker,tag=cube,scores={entropyCycle=1..}] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:white_concrete replace minecraft:air
 	# Shows particles on captured cubes.
execute at @e[tag=cube,scores={blocksRed=9}] run particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~3 ~ 0.7 0 0.7 0 2 force @a
execute at @e[tag=cube,scores={blocksBlue=9}] run particle minecraft:block{block_state:"minecraft:blue_concrete"} ~ ~3 ~ 0.7 0 0.7 0 2 force @a

# Arena preservation
	# Prevents players from placing blocks on spawn locations.
fill 1030 51 1030 1030 52 1030 minecraft:air destroy
fill 970 51 970 970 52 970 minecraft:air destroy
	# Constantly resets the spawn cubes to prevent them from being damaged.
setblock 970 47 970 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Sybillian",rotation:"NONE",posX:-2,mode:"LOAD",posY:-1,sizeX:20,posZ:-2,integrity:1.0f,showair:0b,name:"spawn_red",id:"minecraft:structure_block",sizeY:5,sizeZ:20,showboundingbox:0b} replace
setblock 1030 47 1030 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Sybillian",rotation:"NONE",posX:-17,mode:"LOAD",posY:-1,sizeX:27,posZ:-17,integrity:1.0f,showair:0b,name:"spawn_blue",id:"minecraft:structure_block",sizeY:8,sizeZ:27,showboundingbox:0b} replace
setblock 970 48 970 minecraft:redstone_block
setblock 1030 48 1030 minecraft:redstone_block
setblock 1030 47 1030 minecraft:gray_concrete
setblock 970 47 970 minecraft:gray_concrete
	# Rotates armor stands.
execute as @e[type=block_display,tag=display] at @s run tp @s ~ ~ ~ ~0.2 ~

#tnt
execute as @e[type=tnt,nbt={fuse:20s}] at @s if entity @e[type=marker,scores={cloudType=3..},distance=..5] run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 minecraft:white_concrete replace minecraft:red_concrete
execute as @e[type=tnt,nbt={fuse:20s}] at @s if entity @e[type=marker,scores={cloudType=3..},distance=..5] run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 minecraft:white_concrete replace minecraft:blue_concrete
execute at @e[type=tnt,nbt={fuse:20s}] run summon creeper ~ ~100 ~ {Fuse:1,ignited:1b}
execute as @e[type=creeper] at @s run tp @s ~ ~-100 ~
kill @e[type=tnt,nbt={fuse:20s}]

# Player handling
give @a[team=!Spectators,scores={respawnTrack=1}] minecraft:wooden_pickaxe[enchantments={"vanishing_curse":1},unbreakable={},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-0.5,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value"}]] 1 
item replace entity @a[team=!Spectators,scores={respawnTrack=1}] armor.feet with minecraft:iron_boots[enchantments={"protection":100,"binding_curse":1,"vanishing_curse":1},unbreakable={},custom_name="Spawn Boots",attribute_modifiers=[{id:"knockback_resistance",type:"knockback_resistance",amount:100,operation:"add_value"},{id:"movement_speed",type:"movement_speed",amount:.2,operation:"add_value"}]] 1 
clear @a[scores={respawnTrack=100}] iron_boots[minecraft:unbreakable={}]
 	# Tests for a full team having left.
execute if score RedPlayers gameSettings matches 0 run function cc:main/triggers/blue_winforfeit
execute if score RedPlayers gameSettings matches 0 run function cc:main/triggers/game_end

execute if score BluePlayers gameSettings matches 0 run function cc:main/triggers/red_winforfeit
execute if score BluePlayers gameSettings matches 0 run function cc:main/triggers/game_end

# Advancements
execute as @a[gamemode=survival] at @s run tag @s[y=20,dy=10] add testCD
execute as @a[gamemode=survival] at @s run advancement grant @s[y=49,dy=10,tag=testCD,scores={respawnTrack=40..}] only cc:cheat_death
tag @a[tag=testCD] remove testCD
execute as @a[gamemode=survival] at @s run advancement grant @s[y=-10,dy=10,nbt={Inventory:[{id:"minecraft:diamond_helmet"},{id:"minecraft:diamond_chestplate"},{id:"minecraft:diamond_leggings"},{id:"minecraft:diamond_boots"}]}] only cc:fall_dia

# Location-based stuff (map boundries, spawn zones...)
execute as @a[gamemode=survival] at @s run function cc:loops/arena_edge
