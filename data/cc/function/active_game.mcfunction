function cc:main/universal/bossbar
function cc:loops/arena_edge
function cc:loops/edge
function cc:main/universal/game_control
function cc:main/universal/rotate_cubes
function cc:main/universal/game_items_blue
function cc:main/universal/game_items_red
function cc:main/universal/game_items_uni
execute as @e[type=marker,tag=cube] run function cc:main/universal/retrieve_cube_item

execute if score GameMode gameSettings matches 1 run function cc:main/modes/gm_points
execute if score GameMode gameSettings matches 2 run function cc:main/modes/gm_deathmatch
execute if score GameMode gameSettings matches 3 run function cc:main/modes/gm_entropy
execute if score RedPlayers gameSettings matches 0 run function cc:main/triggers/game_end
execute if score BluePlayers gameSettings matches 0 run function cc:main/triggers/game_end