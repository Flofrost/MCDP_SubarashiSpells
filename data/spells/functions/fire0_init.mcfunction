summon villager ~ ~ ~ {NoAI:1,Tags:["fire0","cast","from_spell"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=fire0,sort=nearest,limit=1] id = @s id

playsound entity.generic.burn master @a ^ ^ ^ 1 1.5