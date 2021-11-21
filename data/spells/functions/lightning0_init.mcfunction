summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","lightning0","cast"],Health:1,Invulnerable:1b,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=lightning0,sort=nearest,limit=1] id = @s id

playsound item.flintandsteel.use master @a ^ ^ ^ 1 1.3