# RotateCubesLX
# Move -x to +y
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~1 ~-1 ~-2 ~1 ~1 ~1001 ~2 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~ ~-1 ~-2 ~ ~1 ~1000 ~2 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-2 ~-1 ~-1 ~-2 ~-1 ~1 ~999 ~2 ~999

execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-1 ~2 ~1 ~-1 ~2 ~-1 ~1002 ~1 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~ ~2 ~1 ~ ~2 ~-1 ~1002 ~ ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~2 ~1 ~1 ~2 ~-1 ~1002 ~-1 ~999
# Move +x to -y
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~2 ~-1 ~1 ~2 ~-1 ~-1 ~999 ~-2 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~2 ~ ~1 ~2 ~ ~-1 ~1000 ~-2 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~2 ~1 ~1 ~2 ~1 ~-1 ~1001 ~-2 ~999
# Move -y to -x
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-2 ~1 ~1 ~-2 ~-1 ~998 ~-1 ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~ ~-2 ~1 ~ ~-2 ~-1 ~998 ~ ~999
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-1 ~-2 ~1 ~-1 ~-2 ~-1 ~998 ~1 ~999
# Rotate sides
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-1 ~-1 ~-2 ~-1 ~-1 ~2 ~999 ~1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-1 ~ ~-2 ~-1 ~ ~2 ~1000 ~1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~-1 ~1 ~-2 ~-1 ~1 ~2 ~1001 ~1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~ ~1 ~-2 ~ ~1 ~2 ~1001 ~ ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~ ~ ~-2 ~ ~ ~2 ~1000 ~ ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~ ~-1 ~-2 ~ ~-1 ~2 ~999 ~ ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~1 ~-2 ~1 ~1 ~2 ~1001 ~-1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~ ~-2 ~1 ~ ~2 ~1000 ~-1 ~998
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~1 ~-1 ~-2 ~1 ~-1 ~2 ~999 ~-1 ~998
# Set new cube
execute as @e[type=marker,tag=lobbyCube] at @s run clone ~998 ~-2 ~998 ~1002 ~2 ~1002 ~-2 ~-2 ~-2 masked
scoreboard players set LobbyPhase rotateCubes 2
