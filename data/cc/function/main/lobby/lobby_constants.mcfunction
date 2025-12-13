# LobbyControl
effect give @a[x=-1000,y=31,z=-1000,distance=..30] minecraft:weakness 10 5 true
effect give @a[x=-1000,y=31,z=-1000,distance=..30] minecraft:resistance 10 4 true
effect give @a[x=-1000,y=31,z=-1000,distance=..30] minecraft:regeneration 10 4 true
effect give @a minecraft:saturation 10 5 true
scoreboard players add @a regenTimer 1
scoreboard players set @a[scores={regenTimer=31..},team=!] regenTimer 0
effect give @a[scores={regenTimer=30}] minecraft:regeneration 1 2 true

gamemode adventure @a[gamemode=survival,x=-1000,y=31,z=-1000,distance=..50]
execute at @e[type=marker,tag=cube] positioned ~-2 ~-2 ~-2 run kill @e[type=item,dx=4,dy=4,dz=4,nbt={Item:{id:"minecraft:gold_block"}}]

tellraw @a[team=!Red,x=-996,y=33,z=-1008,dx=4,dy=3,dz=4] {"text":"You have joined Red team!","color":"red"}
team join Red @a[team=!Red,x=-996,y=33,z=-1008,dx=4,dy=3,dz=4]
tellraw @a[team=!Blue,x=-996,y=33,z=-996,dx=4,dy=3,dz=4] {"text":"You have joined Blue team!","color":"blue"}
team join Blue @a[team=!Blue,x=-996,y=33,z=-996,dx=4,dy=3,dz=4]
tellraw @a[team=!Spectators,x=-1008,y=33,z=-996,dx=4,dy=3,dz=4] {"text":"You are now a Spectator!","color":"gray"}
team join Spectators @a[team=!Spectators,x=-1008,y=33,z=-996,dx=4,dy=3,dz=4]
tellraw @a[team=!Spectators,x=-1008,y=33,z=-1008,dx=4,dy=3,dz=4] {"text":"You are now a Spectator!","color":"gray"}
team join Spectators @a[team=!Spectators,x=-1008,y=33,z=-1008,dx=4,dy=3,dz=4]
clear @a[gamemode=adventure]

execute if score TeamsReady gameSettings matches 0 run data merge block -992 33 -1006 {front_text:{messages:["","Red team is...",{"text":"Not Ready!","color":"red","click_event":{"action":"run_command","command":"function cc:main/lobby/ready/red_ready"}},""]}} 
execute if score TeamsReady gameSettings matches 0 run data merge block -992 33 -994 {front_text:{messages:["","Blue team is...",{"text":"Not Ready!","color":"red","click_event":{"action":"run_command","command":"function cc:main/lobby/ready/blue_ready"}},""]}}

execute if block -996 32 -996 minecraft:blue_stained_glass run teleport @a[team=Blue,x=-1008,y=30,z=-1008,dx=16,dy=4,dz=12] -994 32 -994
execute if block -996 32 -996 minecraft:blue_stained_glass run teleport @a[team=Blue,x=-1008,y=30,z=-1008,dx=12,dy=4,dz=16] -994 32 -994

execute if block -996 32 -1004 minecraft:red_stained_glass run teleport @a[team=Red,x=-1008,y=30,z=-992,dx=16,dy=4,dz=-12] -994 32 -1006
execute if block -996 32 -1004 minecraft:red_stained_glass run teleport @a[team=Red,x=-1008,y=30,z=-992,dx=12,dy=4,dz=-16] -994 32 -1006
