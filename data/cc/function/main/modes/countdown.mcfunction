# {calc:"calcN"} N as in win calculation 

# Game timer
scoreboard players remove TimePassed gameSettings 1
scoreboard players operation DisplaySeconds gameSettings *= TickDivide gameSettings
scoreboard players operation DisplaySeconds gameSettings = TimePassed gameSettings

execute if score TimePassed gameSettings matches 29999 run tellraw @a {"text":"25 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 29999 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 23999 run tellraw @a {"text":"20 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 23999 run playsound minecraft:entity.player.levelup block @p ~ ~ ~ 1 0.5

execute if score TimePassed gameSettings matches 17999 run tellraw @a {"text":"15 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 17999 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 11999 run tellraw @a {"text":"10 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 11999 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 5999 run tellraw @a {"text":"5 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 5999 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 4799 run tellraw @a {"text":"4 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 4799 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 3599 run tellraw @a {"text":"3 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 3599 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 2399 run tellraw @a {"text":"2 minutes remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 2399 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 1200 run tellraw @a {"text":"1 minute remains!","color":"yellow"}
execute if score TimePassed gameSettings matches 1200 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 600 run tellraw @a {"text":"30 seconds remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 600 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 0.5

execute if score TimePassed gameSettings matches 60 run tellraw @a {"text":"3 seconds remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 60 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 1.5

execute if score TimePassed gameSettings matches 40 run tellraw @a {"text":"2 seconds remain!","color":"yellow"}
execute if score TimePassed gameSettings matches 40 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 1.5

execute if score TimePassed gameSettings matches 20 run tellraw @a {"text":"1 second remains!","color":"yellow"}
execute if score TimePassed gameSettings matches 20 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1000000 1.5

$execute if score TimePassed gameSettings matches 0 run function cc:main/triggers/$(calc)
execute if score TimePassed gameSettings matches 0 run function cc:main/triggers/game_end

