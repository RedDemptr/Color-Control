scoreboard objectives add rng dummy
scoreboard players set result rng 731031
scoreboard players set multiplier rng 1664525
scoreboard players set increment rng 1013904223
scoreboard players set modulo rng 4
scoreboard objectives add age dummy
scoreboard objectives add blockColor dummy
scoreboard objectives add blocksRed dummy
scoreboard objectives add blocksBlue dummy
scoreboard objectives add brokeRConcrete minecraft.mined:minecraft.red_concrete
scoreboard objectives add brokeBConcrete minecraft.mined:minecraft.blue_concrete
scoreboard objectives add brokeWConcrete minecraft.mined:minecraft.white_concrete
scoreboard objectives add calcPoints dummy
scoreboard objectives add cloudType dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add entropyCycle dummy
scoreboard objectives add gameSettings dummy
scoreboard objectives add goldPlace minecraft.used:minecraft.gold_block
scoreboard objectives add goldProcess dummy
scoreboard objectives add Health health
scoreboard objectives add itemType dummy
scoreboard objectives add joinGame minecraft.custom:minecraft.leave_game
scoreboard objectives add Kills playerKillCount
scoreboard objectives add Lives dummy
scoreboard objectives add ran trigger
scoreboard objectives add regenTimer dummy
scoreboard objectives add respawnTrack minecraft.custom:minecraft.time_since_death
scoreboard objectives add Points dummy
scoreboard objectives add pointTimerRed dummy
scoreboard objectives add pointTimerBlue dummy
scoreboard objectives add rotateCubes dummy
scoreboard objectives add spawnItem dummy
scoreboard objectives add spawnItemL dummy
scoreboard objectives add spawnItemS dummy
scoreboard objectives add spawnItemXL dummy
scoreboard objectives add spawnItemXS dummy
scoreboard objectives add tpDelay dummy
scoreboard objectives add winStreak dummy

#red's stuff
bossbar add timer "timer"
bossbar set timer color green
scoreboard objectives add redMain dummy
scoreboard players set #1200 redMain 1200
scoreboard players set #20 redMain 20

kill @e[type=marker,tag=lobbyCube]
summon minecraft:marker -1016 29 -1000 {Tags:["lobbyCube"]}

forceload add -50 -50 50 50
tellraw @a[tag=debug] {"text":"init.mcfunction ran successfully.","color":"green"}
team add Red
team add Blue
team add Spectators
