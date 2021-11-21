summon villager ~ ~ ~ {NoAI:1,Tags:["bless","cast","from_spell"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=bless,sort=nearest,limit=1] id = @s id

playsound block.beacon.power_select master @a ^ ^ ^ 1 0.5
playsound block.beacon.power_select master @a ^ ^ ^ 1 1.5