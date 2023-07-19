scoreboard objectives add time dummy 
scoreboard players add @a time 0
scoreboard objectives add days dummy
scoreboard players set @a days 0
scoreboard objectives add sleeptimer dummy
scoreboard players add @a sleeptimer 0
scoreboard objectives add HP health 
scoreboard players add @a HP 0
scoreboard objectives add title dummy
scoreboard players set @a title 1
scoreboard objectives add chat dummy
scoreboard players set @a chat 1


scoreboard objectives add bm.rng dummy
scoreboard players set @a bm.rng 0
scoreboard objectives add fn.rng dummy
scoreboard players set @a fn.rng 0
scoreboard objectives add nm.rng dummy
scoreboard players set @a nm.rng 0

scoreboard objectives add currentevent trigger 
scoreboard players set @a currentevent 0
scoreboard objectives add announcements trigger
scoreboard players set @a announcements 0

#bloodmoon
scoreboard objectives add phantom.rng dummy
scoreboard objectives add phantomj.rng dummy 

#festivalnight
scoreboard objectives add glosquid.rng dummy
scoreboard objectives add axolotl.rng dummy
scoreboard objectives add firework.rng dummy
scoreboard objectives add star.rng dummy
scoreboard objectives add diamondMined mined:diamond_ore
scoreboard objectives add DdiamondMined mined:deepslate_diamond_ore

#nethermoon
scoreboard objectives add bpiglin.rng dummy
scoreboard objectives add piglin.rng dummy
scoreboard objectives add zpiglin dummy
scoreboard objectives add ghast.rng dummy
scoreboard objectives add blaze.rng dummy
scoreboard objectives add strider.rng dummy
scoreboard objectives add magmacube.rng dummy
scoreboard objectives add wskeleton.rng dummy
scoreboard objectives add hoglin.rng dummy

#fullmoon
scoreboard objectives add drippler.rng dummy

team add lunareventsPassive 
team join lunareventsPassive @a 
team leave @e[type=!player] 
tag @e[type=#lunarevents:hostile] add buffed
tag @e[type=phantom] add phantomj
tag @e[type=zombie] add phantom
tag @e[type=phantom] add drippler
tag @e[type=squid] add glowsquid
tag @e[type=cod] add axolotl
tag @e[type=creeper] add firework

tellraw @a ["",{"text":"Outlaws Lunar Events datapack has been installed!","bold":true,"underlined":true,"color":"green"},{"text":"\n\n"},{"text":"+ ","color":"yellow"},{"text":"Blood moons","color":"red"},{"text":" (30% chance every 7th day)\n+ ","color":"yellow"},{"text":"Festival nights","color":"aqua"},{"text":" (20% chance every 7th day)","color":"yellow"},{"text":"\n"},{"text":"+ ","color":"yellow"},{"text":"Nether moons","color":"gold"},{"text":" (20% chance every 7th day)\n-------------------------------------------\n","color":"yellow"},{"text":"/trigger current event","italic":true,"color":"yellow"},{"text":"\nTells you the event currently ongoing\n\n"},{"text":"/trigger announcements","italic":true,"color":"yellow"},{"text":"\nConfigure how you recieve announcements of events\n\n"},{"text":"/function lunarevents:config - Requires operator permissions ","italic":true,"color":"yellow"},{"text":"Disable and enable events\n\n"},{"text":"/function lunarevents:run - Requires operator permissions","italic":true,"color":"yellow"},{"text":"\nManually runs an event "}]
execute at @a run stopsound @a
schedule clear lunarevents:bloodmoon/ambient/bloodrain
schedule clear lunarevents:bloodmoon/ambient/screams
schedule clear lunarevents:festivalnight/ambient/greensky
schedule clear lunarevents:nethermoon/ambient/environment
schedule clear lunarevents:nethermoon/ambient/screams
execute at @a run playsound block.amethyst_block.break master @a ~ ~ ~ 