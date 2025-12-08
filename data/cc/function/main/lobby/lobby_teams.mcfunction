#tellraw @p [{"text":"This will remove everyone from their teams. ","color":"red"},{"text":"[Randomize]","clickEvent":{"action":"run_command","value":"/trigger ran set 1"},"color":"white"}]
# ReadyCheck
execute store result score RedPlayers gameSettings if entity @a[team=Red]
execute store result score BluePlayers gameSettings if entity @a[team=Blue]
execute if score RedPlayers gameSettings matches 0 if block -996 32 -1004 red_stained_glass run function cc:main/lobby/ready/red_unready
execute if score BluePlayers gameSettings matches 0 if block -996 32 -996 blue_stained_glass run function cc:main/lobby/ready/blue_unready

 # RanCheck
execute as @a[scores={ran=1..}] if score TeamsReady gameSettings matches 1.. run tellraw @s {"text":"Teams cannot be randomized while a team is ready!","color":"red"}
execute as @a[scores={ran=1..}] at @s if score TeamsReady gameSettings matches 1.. run playsound minecraft:entity.blaze.hurt block @s ~ ~ ~ 1 1.5
execute as @a[scores={ran=1..}] at @s if score TeamsReady gameSettings matches 1.. run scoreboard players reset @s ran
execute as @a[scores={ran=1..}] at @s if score TeamsReady gameSettings matches 0 run team leave @a
execute as @a[scores={ran=1..}] at @s if score TeamsReady gameSettings matches 0 run function cc:main/lobby/ran_team
execute as @a[scores={ran=1..}] at @s if score TeamsReady gameSettings matches 0 run tellraw @a [{"selector":"@a[scores={ran=1..}]"},{"text":" has randomized teams!","color":"green"}]
scoreboard players reset @a[scores={ran=1..}] ran

# Sign command: scoreboard players enable @s ran
# Tellraw command:trigger ran set 1
