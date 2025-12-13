# Ensures that the game will only start when both teams are ready and have at least one player each.
# TestStart
execute if score TeamsReady gameSettings matches ..1 run scoreboard players set StartGame gameSettings 0
execute if score TeamsReady gameSettings matches 2 if score RedPlayers gameSettings matches 1.. if score BluePlayers gameSettings matches 1.. run scoreboard players add StartGame gameSettings 1

execute if score TeamsReady gameSettings matches 2 if score RedPlayers gameSettings matches 0 if score BluePlayers gameSettings matches 1.. run title @a actionbar {"text":"Red team needs at least one player to start.","color":"dark_red"}
execute if score TeamsReady gameSettings matches 2 if score BluePlayers gameSettings matches 0 if score RedPlayers gameSettings matches 1.. run title @a actionbar {"text":"Blue team needs at least one player to start.","color":"dark_red"}

execute if score TeamsReady gameSettings matches 2 if score RedPlayers gameSettings matches 0 if score BluePlayers gameSettings matches 0 run title @a actionbar {"text":"Both teams need at least one player to start.","color":"dark_red"}

# Counts down to the beginning of the game.
# TriggerStart
execute if score StartGame gameSettings matches 20 run title @a subtitle {"text":"Game beginning in...","color":"blue"}
execute if score StartGame gameSettings matches 20 run title @a title {"text":"3","color":"red"}
execute if score StartGame gameSettings matches 20 as @a at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1

execute if score StartGame gameSettings matches 40 run title @a subtitle {"text":"Game beginning in...","color":"blue"}
execute if score StartGame gameSettings matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score StartGame gameSettings matches 40 as @a at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1

execute if score StartGame gameSettings matches 60 run title @a subtitle {"text":"Game beginning in...","color":"blue"}
execute if score StartGame gameSettings matches 60 run title @a title {"text":"1","color":"green"}
execute if score StartGame gameSettings matches 60 as @a at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1

execute if score StartGame gameSettings matches 80 run title @a subtitle {"text":"Good luck!","color":"blue"}
execute if score StartGame gameSettings matches 80 run title @a title {"text":"Begin!","color":"green"}
execute if score StartGame gameSettings matches 80 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 1

# Runs a few operations that havee to be done before teleporting the players.
execute if score StartGame gameSettings matches 80 run fill -996 32 -1008 -992 33 -992 minecraft:air replace minecraft:barrier
execute if score StartGame gameSettings matches 80 run fill -996 32 -1008 -992 33 -992 minecraft:air replace minecraft:red_stained_glass
execute if score StartGame gameSettings matches 80 run fill -996 32 -1008 -992 33 -992 minecraft:air replace minecraft:blue_stained_glass
execute if score StartGame gameSettings matches 80 run function cc:main/triggers/startgame


# PrepTrigger
execute if score StartGame gameSettings matches 1 run function cc:triggers/start_game
