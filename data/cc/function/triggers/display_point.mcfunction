$scoreboard players add $(team) Points 1
$summon area_effect_cloud ~ ~4 ~ {custom_particle:{type:"happy_villager"},CustomNameVisible:1b,Radius:0f,Duration:120,potion_duration_scale:0f,Tags:["PointDisplay"],CustomName:{"color":"$(color)","fallback":"+1 points","translate":"point"}}
playsound minecraft:entity.player.levelup master @a ~ ~ ~ .2 1.5
