execute store result score @s blaze.rng if predicate lunarevents:chance/10

execute if score @s blaze.rng matches 1 run summon blaze ~ ~ ~ 
execute if score @s blaze.rng matches 1 run tp @s ~ ~-256 ~
tag @s add blaze
