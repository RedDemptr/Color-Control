bossbar set minecraft:timer players @a

execute if score GameActive gameSettings matches 0 run function cc:main/lobby/lobby_constants
execute if score GameActive gameSettings matches 0 run function cc:main/lobby/lobby_options
execute if score GameActive gameSettings matches 0 run function cc:main/lobby/lobby_tuts
execute if score GameActive gameSettings matches 0 run function cc:main/lobby/lobby_teams
execute if score GameActive gameSettings matches 0 run function cc:main/triggers/game_starter

execute if score GameActive gameSettings matches 1 run function cc:main/universal/bossbar
execute if score GameActive gameSettings matches 1 run function cc:loops/arena_edge
execute if score GameActive gameSettings matches 1 run function cc:loops/edge
execute if score GameActive gameSettings matches 1 run function cc:main/universal/game_control
execute if score GameActive gameSettings matches 1 run function cc:main/universal/rotate_cubes
execute if score GameActive gameSettings matches 1 run function cc:main/universal/game_items_blue
execute if score GameActive gameSettings matches 1 run function cc:main/universal/game_items_red
execute if score GameActive gameSettings matches 1 run function cc:main/universal/game_items_uni
execute if score GameActive gameSettings matches 1 if score GameMode gameSettings matches 1 run function cc:main/modes/gm_points
execute if score GameActive gameSettings matches 1 if score GameMode gameSettings matches 2 run function cc:main/modes/gm_deathmatch
execute if score GameActive gameSettings matches 1 if score GameMode gameSettings matches 3 run function cc:main/modes/gm_entropy

function cc:main/universal/player_control

execute store result score RedPlayers gameSettings if entity @a[team=Red]
execute store result score BluePlayers gameSettings if entity @a[team=Blue]
execute if score GameActive gameSettings matches 1 if score RedPlayers gameSettings matches 0 run function cc:main/triggers/game_end
execute if score GameActive gameSettings matches 1 if score BluePlayers gameSettings matches 0 run function cc:main/triggers/game_end
