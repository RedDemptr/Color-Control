tellraw @a {"text":"Red team wins!","color":"red","bold":1b}
tellraw @a [{"text":"Red Points","color":"red"},{"text":" | ","color":"white"},{"score":{"name":"Red","objective":"Points"},"color":"green"}]
tellraw @a [{"text":"Blue Points","color":"blue"},{"text":" | ","color":"white"},{"score":{"name":"Blue","objective":"Points"},"color":"yellow"}]
advancement grant @a[team=Red] only cc:win_points
scoreboard players add @a[team=Red] winStreak 1
scoreboard players set @a[team=Blue] winStreak 0
function cc:main/triggers/game_end
