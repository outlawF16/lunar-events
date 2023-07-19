execute store result score @a time run time query daytime 
execute if score @p time matches 50 run scoreboard players add @a days 1
execute if score @p days matches 7.. if score @p time matches 0..25 run scoreboard players set @a days 0

#blood if score @p time matches 0moon
execute if score @p time matches 13000 if score @p days matches 7 if score @p time matches 0 store result score @a bm.rng if predicate lunarevents:chance/30 

execute if score @p bm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run function lunarevents:bloodmoon/bloodmoon
execute if score @p bm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a fn.rng 0
execute if score @p bm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a nm.rng 0

execute if score @p days matches 0 if score @p time matches 0 run scoreboard players set @a bm.rng 0
execute if score @p days matches 0 if score @p time matches 0 run stopsound @a 
execute if score @p days matches 0 if score @p time matches 0 run schedule clear lunarevents:bloodmoon/ambient/bloodrain
execute if score @p days matches 0 if score @p time matches 0 run schedule clear lunarevents:bloodmoon/ambient/screams
execute if score @p days matches 0 if score @p time matches 0 run worldborder warning distance 10

#festivalnight
execute if score @p time matches 13000 if score @p days matches 7 if score @p time matches 0 store result score @a fn.rng if predicate lunarevents:chance/20

execute if score @p fn.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run function lunarevents:festivalnight/festivalnight
execute if score @p fn.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a bn.rng 0
execute if score @p fn.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a nm.rng 0

execute if score @p days matches 0 if score @p time matches 0 run scoreboard players set @a fn.rng 0
execute if score @p days matches 0 if score @p time matches 0 run stopsound @a 
execute if score @p days matches 0 if score @p time matches 0 run schedule clear lunarevents:festivalnight/ambient/greensky
execute if score @p days matches 0 if score @p time matches 0 run gamerule randomTickSpeed 3
execute if score @p days matches 0 if score @p time matches 0 as @e[type=#lunarevents:hostile] run team leave @s
execute if score @p days matches 0 if score @p time matches 0 as @e[type=villager] run team leave @s
execute if score @p days matches 0 if score @p time matches 0 as @e[type=iron_golem] run team leave @s

#nethermoon
execute if score @p time matches 13000 if score @p days matches 7 if score @p time matches 0 store result score @a nm.rng if predicate lunarevents:chance/20

execute if score @p nm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run function lunarevents:nethermoon/nethermoon
execute if score @p nm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a bm.rng 0
execute if score @p nm.rng matches 1 if score @p days matches 7 if score @p time matches 13010..13050 run scoreboard players set @a fn.rng 0

execute if score @p days matches 0 if score @p time matches 0 run scoreboard players set @a nm.rng 0
execute if score @p days matches 0 if score @p time matches 0 run schedule clear lunarevents:nethermoon/ambient/environment
execute if score @p days matches 0 if score @p time matches 0 run schedule clear lunarevents:nethermoon/ambient/screams
execute if score @p days matches 0 if score @p time matches 0 run stopsound @a

#currentevent
scoreboard players enable @a currentevent
execute at @p[scores={currentevent=1..}] run playsound block.note_block.bit record @p ~ ~ ~
execute run tellraw @p[scores={fn.rng=0,bm.rng=0,nm.rng=0,currentevent=1..}] {"text": "There is no event ongoing!","color": "green"}

execute if score @p bm.rng matches 1 run tellraw @p[scores={currentevent=1..}] {"text": "The current event is a bloodmoon!","color": "green"}
execute if score @p fn.rng matches 1 run tellraw @p[scores={currentevent=1..}] {"text": "The current event is a festival night!","color": "green"}
execute if score @p nm.rng matches 1 run tellraw @p[scores={currentevent=1..}] {"text": "The current event is a nether moon!","color": "green"}

scoreboard players reset @a[scores={currentevent=1..}] currentevent

#announcements
scoreboard players enable @a announcements
execute at @p[scores={announcements=1..}] run playsound block.note_block.pling record @p ~ ~ ~
execute as @p[scores={announcements=1..}] run function lunarevents:announcements

scoreboard players reset @a[scores={announcements=1..}] announcements