# Rotates cubes on the Z axis.

clone ~1 ~2 ~-1 ~-1 ~2 ~-1 ~-1001 ~1 ~-998
clone ~1 ~2 ~ ~-1 ~2 ~ ~-1001 ~ ~-998
clone ~1 ~2 ~1 ~-1 ~2 ~1 ~-1001 ~-1 ~-998
clone ~1 ~1 ~2 ~-1 ~1 ~2 ~-1001 ~-2 ~-999
clone ~1 ~ ~2 ~-1 ~ ~2 ~-1001 ~-2 ~-1000
clone ~1 ~-1 ~2 ~-1 ~-1 ~2 ~-1001 ~-2 ~-1001
clone ~1 ~-2 ~1 ~-1 ~-2 ~1 ~-1001 ~-1 ~-1002
clone ~1 ~-2 ~ ~-1 ~-2 ~ ~-1001 ~ ~-1002
clone ~1 ~-2 ~-1 ~-1 ~-2 ~-1 ~-1001 ~1 ~-1002
clone ~1 ~-1 ~-2 ~-1 ~-1 ~-2 ~-1001 ~2 ~-1001
clone ~1 ~ ~-2 ~-1 ~ ~-2 ~-1001 ~2 ~-1000
clone ~1 ~1 ~-2 ~-1 ~1 ~-2 ~-1001 ~2 ~-999
clone ~-2 ~-1 ~-1 ~2 ~-1 ~-1 ~-1002 ~1 ~-1001
clone ~-2 ~ ~-1 ~2 ~ ~-1 ~-1002 ~1 ~-1000
clone ~-2 ~1 ~-1 ~2 ~1 ~-1 ~-1002 ~1 ~-999
clone ~-2 ~1 ~ ~2 ~1 ~ ~-1002 ~ ~-999
clone ~-2 ~1 ~1 ~2 ~1 ~1 ~-1002 ~-1 ~-999
clone ~-2 ~ ~1 ~2 ~ ~1 ~-1002 ~-1 ~-1000
clone ~-2 ~-1 ~1 ~2 ~-1 ~1 ~-1002 ~-1 ~-1001
clone ~-2 ~-1 ~ ~2 ~-1 ~ ~-1002 ~ ~-1001
clone ~-2 ~ ~ ~2 ~ ~ ~-1002 ~ ~-1000
clone ~-1002 ~-2 ~-1002 ~-998 ~2 ~-998 ~-2 ~-2 ~-2 masked
tellraw @a[tag=debug] [{"selector":"@s"},{"text":" ran rotate_cubes_z.mcfunction successfully.","color":"green"}]