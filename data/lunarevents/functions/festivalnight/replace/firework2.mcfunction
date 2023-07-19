execute store result score @s firework.rng if predicate lunarevents:chance/20

execute if score @s firework.rng matches 1 run summon firework_rocket ~ ~3 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16717792]}]}}}}
execute if score @s firework.rng matches 1 run tp @s ~ ~-256 ~
tag @s add firework