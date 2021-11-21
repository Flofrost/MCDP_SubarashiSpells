summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","laser1","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=laser1,sort=nearest,limit=1] id = @s id

playsound item.lodestone_compass.lock master @a ~ ~ ~ 10 1
playsound item.lodestone_compass.lock master @a ~ ~ ~ 10 1.7
playsound item.lodestone_compass.lock master @a ~ ~ ~ 10 0.3