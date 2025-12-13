title @a actionbar {"text":"Blue team is no longer ready!","color":"blue"}
data merge block -992 33 -994 {front_text:{messages:["","Blue team is...",{"text":"Not Ready!","color":"red","click_event":{"action":"run_command","command":"function cc:main/lobby/ready/blue_ready"}},""]}}
scoreboard players remove TeamsReady gameSettings 1
fill -996 32 -996 -992 33 -992 minecraft:air replace minecraft:barrier
fill -996 32 -996 -992 33 -992 minecraft:air replace minecraft:blue_stained_glass
