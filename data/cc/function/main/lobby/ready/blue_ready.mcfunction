title @a actionbar {"text":"Blue team is ready!","color":"blue"}
data merge block -992 33 -994 {front_text:{messages:["","Blue team is...",{"text":"Ready!","color":"green","click_event":{"action":"run_command","command":"function cc:main/lobby/ready/blue_unready"}},""]}}
scoreboard players add TeamsReady gameSettings 1
clone -5 1 -26 -1 2 -22 -996 32 -996 masked
