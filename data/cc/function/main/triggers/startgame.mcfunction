
# Performs one-time operations to prepare for and kickstart the game.
# StartGame
tp @a[team=Spectators] 1000 60 1000
tp @a[team=Red] 970 51 970
tp @a[team=Blue] 1030 51 1030
scoreboard players set @e[type=marker,tag=cube] pointTimerBlue 0
scoreboard players set @e[type=marker,tag=cube] pointTimerRed 0
scoreboard players set @e[type=marker,tag=cube] spawnTimer 0
scoreboard players set @e[type=marker,tag=cube] blocksBlue 0
scoreboard players set @e[type=marker,tag=cube] blocksRed 0

team join R_Display Red
team join B_Display Blue

# PrepGame
execute if score GameMode gameSettings matches 1 run scoreboard objectives setdisplay sidebar Points
execute if score GameMode gameSettings matches 1 run tellraw @a [{"text":"Selected Gamemode","color":"yellow"},{"text":" | ","color":"white"},{"text":"Classic","color":"gold","bold":1b}]
execute if score GameMode gameSettings matches 1 run tellraw @a [{"text":"Cube Rotation","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"RotateMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 1 run tellraw @a [{"text":"Game Length","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"GameMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 1 run tellraw @a [{"text":"Collect points by keeping cubes captured for your team - the team with the most points after time runs out wins!","color":"blue"}]
#deathmatch
execute if score GameMode gameSettings matches 2 run scoreboard objectives setdisplay sidebar Lives
execute if score GameMode gameSettings matches 2 run tellraw @a [{"text":"Selected Gamemode","color":"yellow"},{"text":" | ","color":"white"},{"text":"Deathmatch","color":"red","bold":1b}]
execute if score GameMode gameSettings matches 2 run tellraw @a [{"text":"Cube Rotation","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"RotateMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 2 run tellraw @a [{"text":"Game Length","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"GameMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 2 run tellraw @a [{"text":"Collect points by keeping cubes captured for your team - the team with the most points after time runs out wins!","color":"blue"}]
#entropy
execute if score GameMode gameSettings matches 3 run scoreboard objectives setdisplay sidebar Points
execute if score GameMode gameSettings matches 3 run tellraw @a [{"text":"Selected Gamemode","color":"yellow"},{"text":" | ","color":"white"},{"text":"Entropy","color":"dark_purple","bold":1b}]
execute if score GameMode gameSettings matches 3 run tellraw @a [{"text":"Cube Rotation","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"RotateMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 3 run tellraw @a [{"text":"Game Length","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"GameMinutes","objective":"gameSettings"},"color":"green","bold":1b},{"text":" minutes","color":"green","bold":1b}]
execute if score GameMode gameSettings matches 3 run tellraw @a [{"text":"Collect points by keeping cubes captured for your team - the team with the most points after time runs out wins!","color":"blue"}]

summon minecraft:marker 0 10 0 {Duration:20,Tags:["startDelay"]}
