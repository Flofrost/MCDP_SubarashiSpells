summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","ice1","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=ice1,sort=nearest,limit=1] id = @s id

playsound entity.snow_golem.death master @a ^ ^ ^ 1 0.3
playsound entity.snow_golem.death master @a ^ ^ ^ 1 1.7