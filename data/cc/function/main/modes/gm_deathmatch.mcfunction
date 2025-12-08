# Teams start with 15 lives. Cubes don't give points.
# The first team to 0 lives loses.

# ModeDeathmatch
scoreboard players add DMTime gameSettings 1
# Remove a point when a player dies
scoreboard players operation Red Lives -= @a[team=Red] Deaths
scoreboard players operation Blue Lives -= @a[team=Blue] Deaths
scoreboard players reset @a Deaths

# Detect game end
execute if score Blue Lives matches ..0 run scoreboard players operation DMTime gameSettings /= MinuteDivide gameSettings
execute if score Blue Lives matches ..0 run function cc:main/triggers/red_windm
execute if score Blue Lives matches ..0 run function cc:main/triggers/game_end

execute if score Red Lives matches ..0 run scoreboard players operation DMTime gameSettings /= MinuteDivide gameSettings
execute if score Red Lives matches ..0 run function cc:main/triggers/blue_windm
execute if score Red Lives matches ..0 run function cc:main/triggers/game_end

execute if score HalfLength gameSettings matches 1.. run scoreboard players remove HalfLength gameSettings 1
execute if score HalfLength gameSettings matches 1 run function cc:triggers/lootbox_kills

execute if score TimePassed gameSettings matches 0 run scoreboard players operation DMTime gameSettings /= MinuteDivide gameSettings

function cc:main/modes/countdown {calc:"calc3"}