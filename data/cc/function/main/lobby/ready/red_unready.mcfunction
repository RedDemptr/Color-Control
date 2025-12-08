title @a actionbar {"text":"Red team is no longer ready!","color":"red"}
data merge block -992 33 -1006 {Text2:'{"text":"Red team is..."}',Text3:'{"text":"Not Ready!","color":"red","clickEvent":{"action":"run_command","value":"function cc:main/lobby/ready/red_ready"}}'}
scoreboard players remove TeamsReady gameSettings 1
fill -996 32 -1008 -992 33 -1004 minecraft:air replace minecraft:barrier
fill -996 32 -1008 -992 33 -1004 minecraft:air replace minecraft:red_stained_glass
