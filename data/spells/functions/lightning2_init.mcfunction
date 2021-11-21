summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","lightning2","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=lightning2,sort=nearest,limit=1] id = @s id

playsound item.flintandsteel.use master @a ^ ^ ^ 1 0.7
playsound entity.lightning_bolt.thunder master @a ^ ^ ^ 10 2