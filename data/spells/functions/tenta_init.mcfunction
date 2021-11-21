summon villager ~ ~ ~ {NoAI:1,Tags:["from_spell","tenta","cast"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=tenta,sort=nearest,limit=1] id = @s id

scoreboard players reset @s X
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 1.5