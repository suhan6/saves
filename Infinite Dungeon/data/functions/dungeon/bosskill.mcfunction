clear @a stained_glass_pane
execute @e[tag=stats,score_bosslevel_min=1,score_bosslevel=1] ~ ~ ~ give @a[tag=bosskill] minecraft:stained_glass 1 5 {CanPlaceOn:["minecraft:monster_egg"],HideFlags:63,Unbreakable:1,display:{Name:"Nature Crystal",Lore:["Place in crystal chamber"]},ench:[{id:34,lvl:1}]}

execute @e[tag=stats,score_bosslevel_min=2,score_bosslevel=2] ~ ~ ~ give @a[tag=bosskill] minecraft:stained_glass 1 14 {CanPlaceOn:["minecraft:monster_egg"],HideFlags:63,Unbreakable:1,display:{Name:"Fire Crystal",Lore:["Place in crystal chamber"]},ench:[{id:34,lvl:1}]}

execute @e[tag=stats,score_bosslevel_min=3,score_bosslevel=3] ~ ~ ~ give @a[tag=bosskill] minecraft:stained_glass 1 11 {CanPlaceOn:["minecraft:monster_egg"],HideFlags:63,Unbreakable:1,display:{Name:"Water Crystal",Lore:["Place in crystal chamber"]},ench:[{id:34,lvl:1}]}

execute @e[tag=stats,score_bosslevel_min=4,score_bosslevel=4] ~ ~ ~ give @a[tag=bosskill] minecraft:stained_glass 1 4 {CanPlaceOn:["minecraft:monster_egg"],HideFlags:63,Unbreakable:1,display:{Name:"Light Crystal",Lore:["Place in crystal chamber"]},ench:[{id:34,lvl:1}]}


execute @e[tag=stats,score_bosslevel_min=1,score_bosslevel=1] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"The ","color":"gray"},{"text":"nature boss","color":"green"},{"text":" was ","color":"gray"},{"text":"defeated","color":"gold"},{"text":".","color":"gray"},{"text":"\n"},{"text":"Well ","color":"gold"},{"text":"done. ","color":"gray"},{"text":"Three","color":"gold"},{"text":" to go.","color":"gray"},{"text":"\n "}]

execute @e[tag=stats,score_bosslevel_min=2,score_bosslevel=2] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"The ","color":"gray"},{"text":"fire boss","color":"red"},{"text":" was ","color":"gray"},{"text":"defeated","color":"gold"},{"text":".","color":"gray"},{"text":"\n"},{"text":"Well ","color":"gold"},{"text":"done. ","color":"gray"},{"text":"Two","color":"gold"},{"text":" to go.","color":"gray"},{"text":"\n "}]

execute @e[tag=stats,score_bosslevel_min=3,score_bosslevel=3] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"The ","color":"gray"},{"text":"water boss","color":"blue"},{"text":" was ","color":"gray"},{"text":"defeated","color":"gold"},{"text":".","color":"gray"},{"text":"\n"},{"text":"Well ","color":"gold"},{"text":"done. ","color":"gray"},{"text":"One","color":"gold"},{"text":" to go.","color":"gray"},{"text":"\n "}]

execute @e[tag=stats,score_bosslevel_min=4,score_bosslevel=4] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"The ","color":"gray"},{"text":"final light boss","color":"yellow"},{"text":" was ","color":"gray"},{"text":"defeated","color":"gold"},{"text":".","color":"gray"},{"text":"\n"},{"text":"Well ","color":"gold"},{"text":"done. ","color":"gray"},{"text":"All bosses","color":"gold"},{"text":" have been defeated.","color":"gray"},{"text":"\n "}]

execute @a ~ ~ ~ particle lava ~ ~0.3 ~ 0.4 0.1 0.4 0.1 30

scoreboard players add @e[tag=stats,score_bosslevel=3] bosslevel 1