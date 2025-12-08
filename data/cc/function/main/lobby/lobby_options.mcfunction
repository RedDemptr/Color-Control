# GameTime
execute as @a[tag=updateGameTime] if score GameMinutes gameSettings matches 10 run scoreboard players set GameLength gameSettings 30000
execute as @a[tag=updateGameTime] if score GameMinutes gameSettings matches 25 run scoreboard players set GameLength gameSettings 24000
execute as @a[tag=updateGameTime] if score GameMinutes gameSettings matches 20 run scoreboard players set GameLength gameSettings 18000
execute as @a[tag=updateGameTime] if score GameMinutes gameSettings matches 15 run scoreboard players set GameLength gameSettings 12000
scoreboard players operation GameMinutes gameSettings = GameLength gameSettings
scoreboard players operation GameMinutes gameSettings /= MinuteDivide gameSettings
execute as @a[tag=updateGameTime] run title @a actionbar [{"text":"The game will last for ","color":"gold"},{"score":{"name":"GameMinutes","objective":"gameSettings"},"color":"yellow"},{"text":" minutes."}]
execute as @a[tag=updateGameTime] run data merge block -999 33 -992 {Text1:'{"text":"The game will last","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1"}}',Text2:'{"text":"for..."}',Text4:'[{"score":{"name":"GameMinutes","objective":"gameSettings"},"color":"green","clickEvent":{"action":"run_command","value":"tag @s add updateGameTime"}},{"text":" minutes!"}]'}
tag @a[tag=updateGameTime] remove updateGameTime

# RotationTime
execute as @a[tag=updateRotTime] if score RotateMinutes gameSettings matches 2 run scoreboard players set TimerSetting rotateCubes 6000
execute as @a[tag=updateRotTime] if score RotateMinutes gameSettings matches 5 run scoreboard players set TimerSetting rotateCubes 4800
execute as @a[tag=updateRotTime] if score RotateMinutes gameSettings matches 4 run scoreboard players set TimerSetting rotateCubes 3600
execute as @a[tag=updateRotTime] if score RotateMinutes gameSettings matches 3 run scoreboard players set TimerSetting rotateCubes 2400
scoreboard players operation RotateMinutes gameSettings = TimerSetting rotateCubes
scoreboard players operation RotateMinutes gameSettings /= MinuteDivide gameSettings
execute as @a[tag=updateRotTime] run title @a actionbar [{"text":"The cubes will rotate every ","color":"gold"},{"score":{"name":"RotateMinutes","objective":"gameSettings"},"color":"yellow"},{"text":" minutes."}]
execute as @a[tag=updateRotTime] run data merge block -1000 33 -992 {Text1:'{"text":"The cubes will","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1"}}',Text2:'{"text":"rotate every..."}',Text4:'[{"score":{"name":"RotateMinutes","objective":"gameSettings"},"color":"green","clickEvent":{"action":"run_command","value":"tag @s add updateRotTime"}},{"text":" minutes!"}]'}
tag @a[tag=updateRotTime] remove updateRotTime

# GameType
execute as @a[tag=updateGameMode] run scoreboard players add GameMode gameSettings 1
execute if score GameMode gameSettings matches 4 run scoreboard players set GameMode gameSettings 1
execute if score GameMode gameSettings matches 1 as @a[tag=updateGameMode] run title @a actionbar [{"text":"The ","color":"gold"},{"text":"Classic","color":"green"},{"text":" gamemode has been selected!","color":"gold"}]
execute if score GameMode gameSettings matches 2 as @a[tag=updateGameMode] run title @a actionbar [{"text":"The ","color":"gold"},{"text":"Deathmatch","color":"dark_red"},{"text":" gamemode has been selected!","color":"gold"}]
execute if score GameMode gameSettings matches 3 as @a[tag=updateGameMode] run title @a actionbar [{"text":"The ","color":"gold"},{"text":"Entropy","color":"dark_purple"},{"text":" gamemode has been selected!","color":"gold"}]
execute if score GameMode gameSettings matches 1 as @a[tag=updateGameMode] run data merge block -1001 33 -992 {Text1:'{"text":"The selected","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1"}}',Text2:'{"text":"gamemode is..."}',Text4:'{"text":"Classic","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add updateGameMode"}}'}
execute if score GameMode gameSettings matches 2 as @a[tag=updateGameMode] run data merge block -1001 33 -992 {Text1:'{"text":"The selected","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1"}}',Text2:'{"text":"gamemode is..."}',Text4:'{"text":"Deathmatch!","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add updateGameMode"}}'}
execute if score GameMode gameSettings matches 3 as @a[tag=updateGameMode] run data merge block -1001 33 -992 {Text1:'{"text":"The selected","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1"}}',Text2:'{"text":"gamemode is..."}',Text4:'{"text":"Entropy!","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add updateGameMode"}}'}
tag @a[tag=updateGameMode] remove updateGameMode
