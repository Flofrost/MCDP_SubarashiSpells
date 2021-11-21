particle dust 1 1 0 2 ~ ~2 ~ 1.5 1 1.5 0.1 2

tag @e[distance=0.1..3,type=arrow] add reflected
tag @e[distance=0.1..3,type=spectral_arrow] add reflected
tag @e[distance=0.1..3,type=potion] add reflected
tag @e[distance=0.1..3,type=fireball] add reflected
tag @e[distance=0.1..3,type=zombie,tag=passive] add reflected
tag @e[distance=0.1..3,type=egg] add reflected
tag @e[distance=0.1..3,type=trident] add reflected
tag @e[distance=0.1..3,type=ender_pearl] add reflected
tag @e[distance=0.1..3,type=experience_bottle] add reflected
tag @e[distance=0.1..3,type=firework_rocket] add reflected
tag @e[distance=0.1..3,type=wither_skull] add reflected
tag @e[distance=0.1..3,type=fishing_bobber] add reflected
tag @e[distance=0.1..3,type=llama_spit] add reflected
tag @e[distance=0.1..3,type=snowball] add reflected
tag @e[distance=0.1..3,type=small_fireball] add reflected
tag @e[distance=0.1..3,type=dragon_fireball] add reflected

execute if entity @e[distance=0.1..3,tag=reflected] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.7
execute as @e[distance=0.1..3,tag=reflected] store result entity @s power[0] double -0.0011 run data get entity @s power[0] 1000
execute as @e[distance=0.1..3,tag=reflected] store result entity @s power[1] double -0.0011 run data get entity @s power[1] 1000
execute as @e[distance=0.1..3,tag=reflected] store result entity @s power[2] double -0.0011 run data get entity @s power[2] 1000
execute as @e[distance=0.1..3,tag=reflected] store result entity @s Motion[0] double -0.0011 run data get entity @s Motion[0] 1000
execute as @e[distance=0.1..3,tag=reflected] store result entity @s Motion[1] double -0.0011 run data get entity @s Motion[1] 1000
execute as @e[distance=0.1..3,tag=reflected] store result entity @s Motion[2] double -0.0011 run data get entity @s Motion[2] 1000

execute as @s[scores={reflect=1..}] run playsound entity.witch.drink master @a ^ ^ ^ 1 1.2
effect give @s[scores={reflect=1..}] instant_health 1 0 true

tag @s[nbt={ActiveEffects:[{Id:11b,Duration:1}]}] remove reflect
tag @s[nbt={ActiveEffects:[{Id:11b,Duration:1}]}] remove casting