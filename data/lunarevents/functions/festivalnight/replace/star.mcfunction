execute store result score @s star.rng if predicate lunarevents:chance/30 

execute if score @s star.rng matches 1 run summon bat ~ ~10 ~ {Tags:["isStar"],ActiveEffects:[{Id:14,Duration:99999,ShowParticles:false},{Id:2,Duration:99999,ShowParticles:false,Amplifier:4}],Silent:true,Health:1,DeathLootTable:"null"}
execute if score @s star.rng matches 1 run tp @s ~ ~-256 ~
tag @s add star