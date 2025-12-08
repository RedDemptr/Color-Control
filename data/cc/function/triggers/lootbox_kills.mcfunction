# Scoreboard Operations
scoreboard players operation @e[type=marker,tag=storage,name=Red] calcPoints = Red Lives
scoreboard players operation @e[type=marker,tag=storage,name=Blue] calcPoints = Blue Lives
scoreboard players operation LootPoints calcPoints > @e[type=marker,tag=storage] calcPoints
scoreboard players operation @e[type=marker,tag=storage] calcPoints -= LootPoints calcPoints

# If Red is losing by up to 10 points OR tied
execute as @e[type=marker,tag=storage,name=Red,scores={calcPoints=-3..0}] run setblock 969 51 969 minecraft:chest[facing=south]{LootTable:"cc:tier_1"} destroy
execute as @e[type=marker,tag=storage,name=Red,scores={calcPoints=-1}] run setblock 1031 51 1031 minecraft:chest[facing=north]{LootTable:"cc:tier_1"} destroy

# If Red is losing by 11 to 20 points
execute as @e[type=marker,tag=storage,name=Red,scores={calcPoints=-6..-4}] run setblock 969 51 969 minecraft:chest[facing=south]{LootTable:"cc:tier_2"} destroy

# If Red is losing by 21+ points
execute as @e[type=marker,tag=storage,name=Red,scores={calcPoints=-7..}] run setblock 969 51 969 minecraft:chest[facing=south]{LootTable:"cc:tier_3"} destroy

# If Blue is losing by up to 10 points OR tied
execute as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=-3..0}] run setblock 1031 51 1031 minecraft:chest[facing=north]{LootTable:"cc:tier_1"} destroy
execute as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=..-1}] run setblock 969 51 969 minecraft:chest[facing=south]{LootTable:"cc:tier_1"} destroy

# If Blue is losing by 11 to 20 points
execute as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=-6..-4}] run setblock 1031 51 1031 minecraft:chest[facing=north]{LootTable:"cc:tier_2"} destroy

# If Blue is losing by 21+ points
execute as @e[type=marker,tag=storage,name=Blue,scores={calcPoints=..-7}] run setblock 1031 51 1031 minecraft:chest[facing=north]{LootTable:"cc:tier_3"} destroy

# Universal Things
particle enchanted_hit 1031 51 1031 0.5 0.5 0.5 0.3 50
particle enchanted_hit 969 51 969 0.5 0.5 0.5 0.3 50
tellraw @a {"text":"A loot box has appeared at your team's spawn location!","color":"green","bold":1b}
execute at @a run playsound minecraft:block.brewing_stand.brew master @s ~ ~ ~ 1 2
scoreboard players reset * calcPoints
tellraw @a[tag=debug] {"text":"lootbox_kills.mcfunction ran successfully.","color":"green"}
