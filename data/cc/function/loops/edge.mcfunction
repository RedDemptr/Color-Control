#+x
execute if entity @a[x=1048,y=42,z=952,dx=3,dy=50,dz=95] run fill 1048 42 952 1048 90 1047 air
#-x
execute if entity @a[x=952,y=42,z=952,dx=3,dy=50,dz=95] run fill 952 90 1047 952 42 952 air
#+y
execute if entity @a[x=953,y=89,z=953,dx=94,dy=3,dz=94] run fill 1047 91 1047 953 91 953 air
#+z
execute if entity @a[x=952,y=42,z=1047,dx=95,dy=50,dz=3] run fill 1047 90 1048 952 42 1048 air
#-z
execute if entity @a[x=953,y=42,z=952,dx=95,dy=50,dz=3] run fill 1048 90 952 953 42 952 air
