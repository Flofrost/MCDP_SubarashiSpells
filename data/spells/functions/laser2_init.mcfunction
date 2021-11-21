summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","laser2","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=laser2,sort=nearest,limit=1] id = @s id

playsound entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 10 1
playsound entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 10 0.1