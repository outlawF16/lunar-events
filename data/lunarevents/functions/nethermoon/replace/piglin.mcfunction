execute store result score @s piglin.rng if predicate lunarevents:chance/20

execute if score @s piglin.rng matches 1 run summon piglin ~ ~ ~ {HandItems:[{id:"minecraft:golden_sword",Count:1b}],IsImmuneToZombification:1b}
execute if score @s piglin.rng matches 1 run tp @s ~ ~-256 ~
tag @s add piglin