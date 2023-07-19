execute if score @p nm.rng matches 1 if score @p days matches 7 run schedule function lunarevents:nethermoon/darkness 3t

execute as @a[predicate=lunarevents:level/light,gamemode=!creative] run effect give @s darkness 2 1 true 
execute as @a[predicate=lunarevents:level/light,gamemode=!creative] run title @s actionbar {"text": "You are engulfed by the darkness!","color": "red","bold": true}
execute as @a[predicate=lunarevents:level/light,gamemode=!creative] run effect give @s wither 2 0 true 