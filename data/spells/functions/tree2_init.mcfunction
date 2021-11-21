summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","tree2","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=tree2,sort=nearest,limit=1] id = @s id

playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.5