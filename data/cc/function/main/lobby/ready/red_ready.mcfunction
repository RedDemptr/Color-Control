title @a actionbar {"text":"Red team is ready!","color":"red"}
data merge block -992 33 -1006 {Text2:'{"text":"Red team is..."}',Text3:'{"text":"Ready!","color":"green","clickEvent":{"action":"run_command","value":"function cc:main/lobby/ready/red_unready"}}'}
scoreboard players add TeamsReady gameSettings 1
clone -5 1 -32 -1 2 -28 -996 32 -1008 masked
