summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","heal0","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=heal0,sort=nearest,limit=1] id = @s id

playsound block.beacon.power_select master @a ^ ^ ^ 1 0.7