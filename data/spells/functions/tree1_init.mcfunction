summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","tree1","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=tree1,sort=nearest,limit=1] id = @s id

playsound minecraft:block.grass.break master @a ~ ~ ~ 1 1.2