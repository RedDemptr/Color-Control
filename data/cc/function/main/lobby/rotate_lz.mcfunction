# RotateCubesLZ
# Move +y to +z
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~2 ~-1 ~-1 ~2 ~-1 ~999 ~1 ~1002
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~2 ~ ~-1 ~2 ~ ~999 ~ ~1002
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~2 ~1 ~-1 ~2 ~1 ~999 ~-1 ~1002
# Move +z to -y
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~1 ~2 ~-1 ~1 ~2 ~999 ~-2 ~1001
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~ ~2 ~-1 ~ ~2 ~999 ~-2 ~1000
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-1 ~2 ~-1 ~-1 ~2 ~999 ~-2 ~999
# Move -y to -z
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-2 ~1 ~-1 ~-2 ~1 ~999 ~-1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-2 ~ ~-1 ~-2 ~ ~999 ~ ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-2 ~-1 ~-1 ~-2 ~-1 ~999 ~1 ~998
# Move -z to +y
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-1 ~-2 ~-1 ~-1 ~-2 ~999 ~2 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~ ~-2 ~-1 ~ ~-2 ~999 ~2 ~1000
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~1 ~-2 ~-1 ~1 ~-2 ~999 ~2 ~1001
# Rotate sides
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~-1 ~-1 ~2 ~-1 ~-1 ~998 ~1 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~ ~-1 ~2 ~ ~-1 ~998 ~1 ~1000
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~1 ~-1 ~2 ~1 ~-1 ~998 ~1 ~1001
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~1 ~ ~2 ~1 ~ ~998 ~ ~1001
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~1 ~1 ~2 ~1 ~1 ~998 ~-1 ~1001
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~ ~1 ~2 ~ ~1 ~998 ~-1 ~1000
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~-1 ~1 ~2 ~-1 ~1 ~998 ~-1 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~-1 ~ ~2 ~-1 ~ ~998 ~ ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~ ~ ~2 ~ ~ ~998 ~ ~1000
# Set new cube
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~998 ~-2 ~998 ~1002 ~2 ~1002 ~-2 ~-2 ~-2 masked
scoreboard players set LobbyPhase rotateCubes 1
