title @a actionbar {"text":"Blue team is ready!","color":"blue"}
data merge block -992 33 -994 {Text2:'{"text":"Blue team is..."}',Text3:'{"text":"Ready!","color":"green","clickEvent":{"action":"run_command","value":"function cc:main/lobby/ready/blue_unready"}}'}
scoreboard players add TeamsReady gameSettings 1
clone -5 1 -26 -1 2 -22 -996 32 -996 masked
