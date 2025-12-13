bossbar set minecraft:timer players @a

execute if score GameActive gameSettings matches 0 run function cc:unactive_game
execute if score GameActive gameSettings matches 1 run function cc:active_game
function cc:main/universal/player_control

execute store result score RedPlayers gameSettings if entity @a[team=Red]
execute store result score BluePlayers gameSettings if entity @a[team=Blue]