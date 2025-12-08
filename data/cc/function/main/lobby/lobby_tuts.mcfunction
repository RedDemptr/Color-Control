#Triggers tutorial texts as well as a rotating cube in the lobby.

# InfoSigns
tellraw @a[tag=textCubes] [{"text":"Cubes: How Do They Work?","color":"green","bold":1b}]
tellraw @a[tag=textCubes] [{"text":"The map is made up of a grid of cubes. These cubes can be captured by mining the white concrete blocks they're made of, and once captured, will provide your team with points and items. Every set interval (default 2 minutes), all of the cubes will rotate. Items will only be spawned on top of a cube, so be sure to keep it captured as it rotates!","color":"yellow"}]
tag @a[tag=textCubes] remove textCubes

tellraw @a[tag=textPoints] [{"text":"Getting Points for Your Team","color":"green","bold":1b}]
tellraw @a[tag=textPoints] [{"text":"Having a cube captured for a cumulative 45 seconds will grant your team a point. Killing a player will also award two points ","color":"yellow"},{"text":"as long as they don't fall into the void.","italic":1b},{"text":" If you die, however, your team will have one point deducted."}]
tag @a[tag=textPoints] remove textPoints

tellraw @a[tag=textModes] [{"text":"Gamemodes","color":"green","bold":1b}]
tellraw @a[tag=textModes] [{"text":"Classic","color":"blue","bold":1b},{"text":": Color Control at its core; fighting over cubes for points!","color":"yellow","bold":1b}]
tellraw @a[tag=textModes] [{"text":"Deathmatch","color":"red","bold":1b},{"text":": Rather than gathering points, players claim victory by reducing the opposing team to 0 lives.","color":"yellow","bold":1b}]
tellraw @a[tag=textModes] [{"text":"Entropy","color":"light_purple","bold":1b},{"text":": Players gather points as normal, but with a twist; cubes can fall from the sky!","color":"yellow","bold":1b}]
tag @a[tag=textModes] remove textModes

execute as @a[tag=textRotate] if score LobbyPhase rotateCubes matches 1 run function cc:main/lobby/rotate_lx
execute as @a[tag=textRotate] if score LobbyPhase rotateCubes matches 2 run function cc:main/lobby/rotate_lz
execute at @a[tag=textRotate] run playsound minecraft:block.piston.extend block @p ~ ~ ~ 1 0.7
tag @a[tag=textRotate] remove textRotate

tellraw @a[tag=textAlpha] [{"text":"Alpha Testers","color":"green","bold":1b}]
tellraw @a[tag=textAlpha] [{"text":"rolo_","color":"blue"},{"text":" | ","color":"white"},{"text":"Burn_E99","color":"blue"},{"text":" | ","color":"white"},{"text":"MonkeyNinja01","color":"blue"},{"text":" | ","color":"white"},{"text":"ZeviVoid","color":"blue"},{"text":" | ","color":"white"},{"text":"MasterVio","color":"blue"},{"text":" | ","color":"white"},{"text":"_Pande_","color":"blue"},{"text":" | ","color":"white"},{"text":"20JPorter","color":"blue"},{"text":" | ","color":"white"},{"text":"scorpionwarrior","color":"blue"},{"text":" | ","color":"white"},{"text":"danified","color":"blue"},{"text":" | ","color":"white"},{"text":"Soul_Blade_Aegis","color":"blue"},{"text":" | ","color":"white"},{"text":"Funnygymb","color":"blue"},{"text":" | ","color":"white"},{"text":"DauntlessFive513","color":"blue"},{"text":" | ","color":"white"},{"text":"DefendPopPunk","color":"blue"}]
tag @a[tag=textAlpha] remove textAlpha

tellraw @a[tag=textBeta] [{"text":"Beta Testers","color":"green","bold":1b}]
tellraw @a[tag=textBeta] [{"text":"Ravbug","color":"blue"},{"text":" | ","color":"white"},{"text":"hgbf","color":"blue"},{"text":" | ","color":"white"},{"text":"SirBenet","color":"blue"},{"text":" | ","color":"white"},{"text":"Archee","color":"blue"},{"text":" | ","color":"white"},{"text":"BigNinjaChicken","color":"blue"},{"text":" | ","color":"white"},{"text":"TheBarfCreations","color":"blue"},{"text":" | ","color":"white"},{"text":"CaptainCool02","color":"blue"},{"text":" | ","color":"white"},{"text":"ChainsawNinja","color":"blue"},{"text":" | ","color":"white"},{"text":"McDic","color":"blue"},{"text":" | ","color":"white"},{"text":"RedDemptr","color":"blue"},{"text":" | ","color":"white"},{"text":"Sparky01","color":"blue"},{"text":" | ","color":"white"},{"text":"Rickyling","color":"blue"},{"text":" | ","color":"white"},{"text":"Slash_Stache","color":"blue"},{"text":" | ","color":"white"},{"text":"Teejers","color":"blue"},{"text":" | ","color":"white"},{"text":"FearlessPie","color":"blue"},{"text":" | ","color":"white"},{"text":"chiptzel","color":"blue"},{"text":" | ","color":"white"},{"text":"Zieon","color":"blue"},{"text":" | ","color":"white"},{"text":"Water_Gem","color":"blue"},{"text":" | ","color":"white"},{"text":"xPsyclone","color":"blue"},{"text":" | ","color":"white"},{"text":"BlueVsRed12","color":"blue"}]
tag @a[tag=textBeta] remove textBeta

tellraw @a[tag=textHelpers] [{"text":"Other Helpers","color":"green","bold":1b}]
tellraw @a[tag=textHelpers] [{"text":"RedDemptr","color":"green"},{"text":" | ","color":"white"},{"text":"Fully updated the game from 1.12 to 1.16 -> 1.21.10","color":"blue"}]
tellraw @a[tag=textHelpers] [{"text":"MonkeyNinja01","color":"green"},{"text":" | ","color":"white"},{"text":"Deathmatch Gamemode Inspiration","color":"blue"}]
tellraw @a[tag=textHelpers] [{"text":"Faceman","color":"green","click_event":{"action":"open_url","url":"https://twitter.com/tptmike"},"hover_event":{"action":"show_text","value":"@TptMike"}},{"text":" | ","color":"white","click_event":{"action":"open_url","url":"https://twitter.com/tptmike"},"hover_event":{"action":"show_text","value":"@TptMike"}},{"text":"Development and Testing Server Hosting","color":"blue","click_event":{"action":"open_url","url":"https://twitter.com/tptmike"},"hover_event":{"action":"show_text","value":"@TptMike"}}]
tag @a[tag=textHelpers] remove textHelpers

tellraw @a[tag=textSyb] [{"text":"Sybillian - Mapmaker","color":"green","bold":1b}]
tellraw @a[tag=textSyb] [{"text":"GitHub","color":"dark_green","click_event":{"action":"open_url","url":"http://www.github.com/sybillian/color-control/"},"hover_event":{"action":"show_text","value":{"text":"","extra":[{"text":"http://www.github.com/sybillian/color-control","color":"white"}]}}},{"text":" | ","color":"white"},{"text":"Twitter","color":"aqua","click_event":{"action":"open_url","url":"https://twitter.com/Sybillian_"},"hover_event":{"action":"show_text","value":{"text":"","extra":[{"text":"@Sybillian_","color":"white"}]}}},{"text":" | ","color":"white"},{"text":"YouTube","color":"red","click_event":{"action":"open_url","url":"https://www.youtube.com/channel/UCkXvQ-RUQIDCJtQzP6Fc2Ag"},"hover_event":{"action":"show_text","value":{"text":"","extra":[{"text":"https://www.youtube.com/channel/UCkXvQ-RUQIDCJtQzP6Fc2Ag","color":"white"}]}}}]
tag @a[tag=textSyb] remove textSyb

# TriggerLCubes
