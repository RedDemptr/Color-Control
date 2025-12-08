tellraw @a {"text":"Blue team wins (the Red team forfeited!)","color":"blue","bold":1b}
tellraw @a [{"text":"Blue Points","color":"blue"},{"text":" | ","color":"white"},{"score":{"name":"Red","objective":"Points"},"color":"green"}]
tellraw @a [{"text":"Red Points","color":"red"},{"text":" | ","color":"white"},{"score":{"name":"Red","objective":"Points"},"color":"yellow"}]
function cc:main/triggers/game_end
