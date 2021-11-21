tag @s add fire0

particle flame ~ ~1 ~ 0.2 0.5 0.2 0.001 2

execute store result score @s sublevel run scoreboard players get spells.fire0 sublevel
summon fireball ^ ^ ^3 {Tags:["fire0","from_spell"],ExplosionPower:4}
scoreboard players operation @e[type=fireball,tag=fire0,sort=nearest,limit=1] id = @s id
playsound item.firecharge.use master @a ~ ~ ~ 1 0.7
execute store result score @s X run data get entity @s Pos[0] 100
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s X run data get entity @s Pos[0] 100
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s Y run data get entity @s Pos[1] 100
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[0] double 0.001 run scoreboard players operation @s X -= @p X
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[1] double 0.001 run scoreboard players operation @s Y -= @p Y
execute as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[2] double 0.001 run scoreboard players operation @s Z -= @p Z

tag @s remove fire0