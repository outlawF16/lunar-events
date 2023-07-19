execute store result score @s drippler.rng if predicate lunarevents:chance/5

execute if score @s drippler.rng matches 1 run summon phantom ~ ~15 ~ {Size:40,CustomName:'{"text":"Drippler"}'}
execute if score @s drippler.rng matches 1 run tp @s ~ ~-256 ~
tag @s add drippler