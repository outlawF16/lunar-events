execute store result score @s glosquid.rng if predicate lunarevents:chance/30

execute if score @s glosquid.rng matches 1 run summon glow_squid ~ ~ ~
execute if score @s glosquid.rng matches 1 run tp @s ~ ~-256 ~
tag @s add glowsquid