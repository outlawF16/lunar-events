execute store result score @s zpiglin.rng if predicate lunarevents:chance/30

execute if score @s zpiglin.rng matches 1 run summon zombified_piglin ~ ~ ~
execute if score @s zpiglin.rng matches 1 run summon zombified_piglin ~ ~ ~
execute if score @s zpiglin.rng matches 1 run summon zombified_piglin ~ ~ ~
execute if score @s zpiglin.rng matches 1 run tp @s ~ ~-256 ~
tag @s add zombifiedpiglin