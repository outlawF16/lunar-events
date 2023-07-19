execute store result score @s bpiglin.rng if predicate lunarevents:chance/10

execute if score @s bpiglin.rng matches 1 run summon piglin_brute ~ ~ ~ {IsImmuneToZombification:1b,HandItems:[{id:"minecraft:golden_axe",Count:1b}]}
execute if score @s hoglin.rng matches 1 run tp @s ~ ~-256 ~
tag @s add piglinbrute