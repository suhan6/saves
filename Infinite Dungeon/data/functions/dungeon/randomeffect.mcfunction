scoreboard players tag @p add kali

execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608161"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608162"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608163"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608164"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608165"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608166"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608167"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608168"]}
execute @a[tag=kali] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent60816","randomEvent608169"]}

scoreboard players tag @r[type=area_effect_cloud,tag=randomEvent60816] add chosenToExecute

tellraw @a[tag=kali] ["",{"text":"\n"},{"text":"    ","color":"gray"},{"selector":"@e[tag=godname]","color":"gold"},{"text":"'","color":"gray"},{"text":"s","color":"gold"},{"text":" effect:","color":"gray"}]


execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608161] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You have been cursed!\n    Can you SEE me anymore?","color":"red"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608161] ~ ~ ~ effect @a[tag=kali] blindness 20 0 true
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608161] ~ ~ ~ effect @a[tag=kali] night_vision 20 0 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608162] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You have been cursed!\n    You feel s l o w and w e a k","color":"red"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608162] ~ ~ ~ effect @a[tag=kali] slowness 30 3 true
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608162] ~ ~ ~ effect @a[tag=kali] jump_boost 30 230 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608163] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You were rewarded for your prayers!\n    ","color":"green"},{"selector":"@e[tag=godname]","color":"gold"},{"text":" gave you the the speed of the light.","color":"green"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608163] ~ ~ ~ effect @a[tag=kali] speed 30 2 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608164] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You were rewarded for your prayers!\n    ","color":"green"},{"selector":"@e[tag=godname]","color":"gold"},{"text":" gave you the eyes of an owl.","color":"green"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608164] ~ ~ ~ effect @a[tag=kali] night_vision 60 0 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608165] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You were rewarded for your prayers!\n    ","color":"green"},{"selector":"@e[tag=godname]","color":"gold"},{"text":" gave you the strength a golem.","color":"green"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608165] ~ ~ ~ effect @a[tag=kali] regeneration 25 5 true
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608165] ~ ~ ~ effect @a[tag=kali] strength 25 5 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608166] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You were rewarded for your prayers!\n    ","color":"green"},{"selector":"@e[tag=godname]","color":"gold"},{"text":" gave you the wealthyness of an evoker.","color":"green"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608166] ~ ~ ~ scoreboard players add @a[tag=kali] coins 50

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608167] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You have been cursed!\n    The energy of life slowly leaves your body...","color":"red"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608167] ~ ~ ~ effect @a[tag=kali] wither 20 1 true

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608168] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You have been cursed!\n    A thought hits you: look up...","color":"red"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608168] ~ ~ ~ execute @a[tag=kali] ~ ~ ~ fill ~1 ~2 ~1 ~-1 ~2 ~-1 lava 0 replace air 0

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608169] ~ ~ ~ tellraw @a[tag=kali] ["",{"text":"    You were rewarded for your prayers!\n    ","color":"green"},{"selector":"@e[tag=godname]","color":"gold"},{"text":" killed all existing monsters for you.","color":"green"},{"text":"\n "}]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608169] ~ ~ ~ kill @e[tag=monster]
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent608169] ~ ~ ~ scoreboard players add @a[tag=kali] coins 15


kill @e[tag=randomEvent60816]
scoreboard players tag @a remove kali

setblock ~ ~ ~ stone
fill ~ ~1 ~ ~1 ~1 ~1 concrete_powder 15
