#/* Controls players joining depending on whether
#a game is active at the time or not.
#playerTrigger 0 == do nothing
#playerTrigger 1 == tp to lobby, set mode to 2
#playerTrigger 2 == tp to game, set mode to 3 */

# LobbyControl
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 0 run teleport @s -1000 31 -1000 -90 0
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 0 run gamemode adventure @s
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 0 run team leave @s

execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 1 run teleport @s 1000 50 1000
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 1 run gamemode spectator @s
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 1 run tellraw @s [{"text":"You've joined during a game and have been made a spectator until it ends.","color":"gray"}]
execute as @a[scores={joinGame=1..}] at @s if score GameActive gameSettings matches 1 run team join Spectators @s

scoreboard players reset @a[scores={joinGame=1..}] joinGame
