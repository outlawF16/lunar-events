execute if score @p days matches 7 if score @p bm.rng matches 1 run schedule function lunarevents:bloodmoon/nosleep 3t

execute as @a store result score @s sleeptimer run data get entity @s SleepTimer 
execute as @a[scores={sleeptimer=20..},gamemode=!creative] at @s run tp @s ~ ~ ~
execute as @a[scores={sleeptimer=20..},gamemode=!creative] run tellraw @s {"text": "You are unable to sleep this night"}