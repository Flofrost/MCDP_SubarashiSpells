tag @s remove casting
execute store result score @s sublevel run scoreboard players get spells.water0 sublevel

summon area_effect_cloud ^ ^ ^ {Tags:["from_spell","water0"]}
execute at @e[type=area_effect_cloud,tag=water0,sort=nearest,limit=1] run fill ^-1 ^-1 ^-2 ^1 ^-1 ^2 water destroy
execute as @e[type=area_effect_cloud,tag=water0,sort=nearest,limit=1] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute at @e[type=area_effect_cloud,tag=water0,sort=nearest,limit=1] run fill ^-1 ^-1 ^-2 ^1 ^-1 ^2 water destroy

particle block water ~ ~1.61 ~ 0 0.5 0 0.2 100
playsound ambient.underwater.exit master @a ~ ~ ~ 1 0.7