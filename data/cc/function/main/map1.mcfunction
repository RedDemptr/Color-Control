kill @e[type=marker,tag=cube]
# execute positioned 1000 45 1000
summon marker ~ ~ ~ {Tags:["cube", "middle"],data:{"item":"diamond"}}

summon marker ~-15 ~3 ~-30 {Tags:["cube"],data:{"item":"oak_planks"}}
summon marker ~15 ~3 ~30 {Tags:["cube"],data:{"item":"oak_planks"}}

summon marker ~-30 ~3 ~-15 {Tags:["cube"],data:{"item":"cobblestone"}}
summon marker ~30 ~3 ~15 {Tags:["cube"],data:{"item":"cobblestone"}}

summon marker ~15 ~2 ~15 {Tags:["cube"],data:{"item":"iron_ingot"}}
summon marker ~-15 ~2 ~-15 {Tags:["cube"],data:{"item":"iron_ingot"}}

summon marker ~-30 ~4 ~ {Tags:["cube"],data:{"item":"arrow"}}
summon marker ~30 ~4 ~ {Tags:["cube"],data:{"item":"arrow"}}

summon marker ~-30 ~3 ~15 {Tags:["cube"],data:{"item":"lapis_lazuli"}}
summon marker ~30 ~3 ~-15 {Tags:["cube"],data:{"item":"lapis_lazuli"}}

summon marker ~-15 ~3 ~30 {Tags:["cube"],data:{"item":"golden_apple"}}
summon marker ~15 ~3 ~-30 {Tags:["cube"],data:{"item":"golden_apple"}}

summon marker ~ ~1 ~15 {Tags:["cube"],data:{"effect":"strength","opposite_effect":"weakness"}}
summon marker ~ ~1 ~-15 {Tags:["cube"],data:{"effect":"strength","opposite_effect":"weakness"}}

summon marker ~ ~1 ~-15 {Tags:["cube"],data:{"effect":"speed","opposite_effect":"slowness"}}

summon marker ~15 ~1 ~ {Tags:["cube"],data:{"item":"iron_ingot"}}
summon marker ~-15 ~1 ~ {Tags:["cube"],data:{"item":"iron_ingot"}}

# closest to spawn
summon marker ~ ~4 ~-30 {Tags:["cube"],data:{"item":"string"}}
summon marker ~ ~4 ~30 {Tags:["cube"],data:{"item":"string"}}

# Enchanting table
summon marker ~15 ~2 ~-15 {Tags:["cube"],data:{"item":"enchanting_table"}}
summon marker ~-15 ~2 ~15 {Tags:["cube"],data:{"item":"enchanting_table"}}

# TP (ender_chest)
summon marker ~30 ~2 ~-30 {Tags:["cube"],data:{"item":"ender_chest"}}
summon marker ~-30 ~2 ~30 {Tags:["cube"],data:{"item":"ender_chest"}}

# Pearls (ender_pearl)
summon marker ~45 ~5 ~ {Tags:["cube"],data:{"item":"ender_pearl"}}
summon marker ~-45 ~5 ~ {Tags:["cube"],data:{"item":"ender_pearl"}}

# TNT
summon marker ~45 ~4 ~-15 {Tags:["cube"],data:{"item":"tnt"}}
summon marker ~-45 ~4 ~15 {Tags:["cube"],data:{"item":"tnt"}}

# Fire charge
summon marker ~ ~5 ~45 {Tags:["cube"],data:{"item":"fire_charge"}}
summon marker ~ ~5 ~-45 {Tags:["cube"],data:{"item":"fire_charge"}}

# Gold (gold_ingot)
summon marker ~-15 ~4 ~45 {Tags:["cube"],data:{"item":"gold_ingot"}}
summon marker ~15 ~4 ~-45 {Tags:["cube"],data:{"item":"gold_ingot"}}

# Tipped arrow
summon marker ~15 ~4 ~45 {Tags:["cube"],data:{"item":"arrow"}}
summon marker ~-15 ~4 ~-45 {Tags:["cube"],data:{"item":"arrow"}}

# Leather
summon marker ~45 ~4 ~15 {Tags:["cube"],data:{"item":"leather"}}
summon marker ~-45 ~4 ~-15 {Tags:["cube"],data:{"item":"leather"}}


tellraw @a[tag=debug] [{"text":"Cubes summoned at world 1000, Y varies, 1000","color":"yellow"}]
#summon minecraft:marker 985 48.00 985 {Tags:["cube"]}
#execute positioned 985 48 985 as @e[type=marker,limit=1] run scoreboard players set @s cloudType 3