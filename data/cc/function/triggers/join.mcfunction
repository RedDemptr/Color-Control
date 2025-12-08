# Handles players joining for the first time.
# Last edited: 5/10/17

teleport @s -1000 31 -1000
spawnpoint @s -1000 31 -1000
tellraw @s [{"text":"Welcome to ","color":"yellow"},{"text":"Color","color":"red","bold":1b},{"text":" Control","color":"blue","bold":1b},{"text":", a minigame by ","color":"yellow","bold":1b},{"text":"Sybillian!","color":"green"}]
gamemode adventure @s
recipe give @s *
scoreboard players set @s joinGame 1
tellraw @a[tag=debug] {"text":"join.mcfunction ran successfully.","color":"green"}
