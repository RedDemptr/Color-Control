tellraw @a {"text":"The game has ended in a draw!","color":"yellow","bold":1b}
tellraw @a [{"text":"Red Points","color":"red"},{"text":" | ","color":"white"},{"score":{"name":"Red","objective":"Points"},"color":"yellow"}]
tellraw @a [{"text":"Blue Points","color":"blue"},{"text":" | ","color":"white"},{"score":{"name":"Blue","objective":"Points"},"color":"yellow"}]
scoreboard players add @a[team=Blue] winStreak 1
scoreboard players set @a[team=Red] winStreak 0
function cc:main/triggers/game_end
