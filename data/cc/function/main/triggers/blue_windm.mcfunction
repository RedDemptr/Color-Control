tellraw @a {"text":"Blue team wins!","color":"blue","bold":1b}
tellraw @a [{"text":"Blue Lives","color":"blue"},{"text":" | ","color":"white"},{"score":{"name":"Blue","objective":"Lives"},"color":"green"}]
tellraw @a [{"text":"Game Length","color":"blue"},{"text":" | ","color":"white"},{"score":{"name":"DMTime","objective":"gameSettings"},"color":"green"},{"text":" minutes","color":"green"}]
advancement grant @a[team=Blue] only cc:win_dm
execute if score Blue Lives matches 8.. run advancement grant @a[team=Blue] only cc:unshakeable
scoreboard players add @a[team=Blue] winStreak 1
scoreboard players set @a[team=Red] winStreak 0
