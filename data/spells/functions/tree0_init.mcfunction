summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","tree0","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=tree0,sort=nearest,limit=1] id = @s id

playsound minecraft:block.composter.fill_success master @a ~ ~ ~ 1 1