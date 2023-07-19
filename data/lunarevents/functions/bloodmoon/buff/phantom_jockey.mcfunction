execute store result score @s phantomj.rng if predicate lunarevents:chance/20

execute if score @s phantomj.rng matches 1 run summon phantom ~ ~ ~ {Health:16,Size:1,Passengers:[{id:"minecraft:creeper",Fuse:15}]}
execute if score @s phantomj.rng matches 1 run tp @s ~ ~-256 ~
tag @s add phantomj