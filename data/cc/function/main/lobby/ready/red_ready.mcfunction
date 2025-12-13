title @a actionbar {"text":"Red team is ready!","color":"red"}
data merge block -992 33 -1006 {front_text:{messages:["","Red team is...",{"text":"Ready!","color":"green","click_event":{"action":"run_command","command":"function cc:main/lobby/ready/red_unready"}},""]}} 
scoreboard players add TeamsReady gameSettings 1
clone -5 1 -32 -1 2 -28 -996 32 -1008 masked
