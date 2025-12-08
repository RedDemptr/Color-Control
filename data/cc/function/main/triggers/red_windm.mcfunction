#>{"type":"impulse-chain","auto":false,"markerTag":"RedWinDM"}
tellraw @a {"text":"Red team wins!","color":"red","bold":1b}
tellraw @a [{"text":"Red Lives","color":"red"},{"text":" | ","color":"white"},{"score":{"name":"Red","objective":"Lives"},"color":"green"}]
tellraw @a [{"text":"Game Length","color":"red"},{"text":" | ","color":"white"},{"score":{"name":"DMTime","objective":"gameSettings"},"color":"green"},{"text":" minutes","color":"green"}]
advancement grant @a[team=Red] only cc:win_dm
execute if score Red Lives matches 8.. run advancement grant @a[team=Red] only cc:unshakeable

scoreboard players add @a[team=Red] winStreak 1
scoreboard players set @a[team=Blue] winStreak 0
