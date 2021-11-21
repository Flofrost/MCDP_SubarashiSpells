summon small_fireball ~ ~ ~ {Tags:["tenta","new","from_spell"],Passengers:[{id:"area_effect_cloud",Duration:1200,Tags:["tentamissle","passive","from_spell"]}]}
execute facing entity @s feet run summon area_effect_cloud ^ ^ ^0.5 {Tags:["tenta"]}
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result score @s X run data get entity @s Pos[0] 100
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result score @s Y run data get entity @s Pos[1] 100
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] store result score @s X run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] store result score @s Y run data get entity @s Pos[1] 100
execute as @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result entity @s power[0] double 0.01 run scoreboard players operation @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] X -= @s X
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result entity @s power[1] double 0.01 run scoreboard players operation @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] Y -= @s Y
execute as @e[type=small_fireball,tag=tenta,tag=new,sort=nearest,limit=1] store result entity @s power[2] double 0.01 run scoreboard players operation @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1] Z -= @s Z
tag @e[type=small_fireball,tag=tenta,tag=new,sort=nearest] remove new
kill @e[type=area_effect_cloud,tag=tenta,sort=nearest,limit=1]

tag @s[tag=tentarget] remove tentarget

playsound entity.dolphin.death master @a ~ ~ ~ 1 2