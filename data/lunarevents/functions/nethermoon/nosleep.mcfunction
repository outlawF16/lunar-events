execute if score @p days matches 7 if score @p nm.rng matches 1 run schedule function lunarevents:nethermoon/nosleep 3t

execute as @a store result score @s sleeptimer run data get entity @s SleepTimer 
execute as @a[scores={sleeptimer=20..},gamemode=!creative] run tellraw @s {"text": "A mysterious force prevents you from sleeping"}
execute as @a[scores={sleeptimer=20..},gamemode=!creative] run effect give @s wither 2 2 true