tp @a[tag=!welomefirst] -10023 48 32 0 5
gamemode adventure @a[tag=!welomefirst]
tellraw @a[tag=!welomefirst] ["",{"text":"\n"},{"text":"Welcome to the ","color":"gray"},{"text":"Infinite Dungeon","color":"gold"},{"text":"!\nby ","color":"gray"},{"text":"_Skyball_","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"http://bit.ly/skyballyoutube"}},{"text":" ","color":"gold"},{"text":"and ","color":"gray"},{"text":"1chBin1ch","color":"dark_blue"},{"text":"\n "}]
scoreboard players tag @a[tag=!welomefirst] add ingame
scoreboard players tag @a[tag=!welomefirst] add novis
scoreboard players tag @a add welomefirst
scoreboard teams join player @a


xp -10l @a

#scoreboard players tag @a[x=-74,y=11,z=-68,dx=140,dy=20,dz=140] add ingame
#scoreboard players tag @a[x=-29,y=11,z=-30,dx=88,dy=61,dz=90] remove ingame
tp @a[x=-29,y=64,z=-30,dx=88,dy=3,dz=90] ~ ~-10 ~

scoreboard players tag @r[tag=ingame] add summonertag
execute @a[tag=summonertag] ~ ~ ~ execute @e[tag=summonlev1,r=15] ~ ~ ~ function dungeon:spawn/spawnlev1
execute @a[tag=summonertag] ~ ~ ~ kill @e[tag=summonlev1,r=15]
execute @a[tag=summonertag] ~ ~ ~ execute @e[tag=summonlev2,r=15] ~ ~ ~ function dungeon:spawn/spawnlev2
execute @a[tag=summonertag] ~ ~ ~ kill @e[tag=summonlev2,r=15]
execute @a[tag=summonertag] ~ ~ ~ execute @e[tag=summonlev3,r=15] ~ ~ ~ function dungeon:spawn/spawnlev3
execute @a[tag=summonertag] ~ ~ ~ kill @e[tag=summonlev3,r=15]
execute @e[tag=summonboss] ~ ~ ~ function dungeon:spawn/spawnboss
kill @e[tag=summonboss]
scoreboard players tag @a remove summonertag

effect @a[x=-12,y=77,z=-7,dx=18,dy=12,dz=19] minecraft:regeneration 1 5 true
execute @e[x=-12,y=77,z=-7,dx=18,dy=12,dz=19,tag=monster] ~ ~1 ~ particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute @e[x=-12,y=77,z=-7,dx=18,dy=12,dz=19,type=slime] ~ ~1 ~ particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
tp @e[x=-12,y=77,z=-7,dx=18,dy=12,dz=19,tag=monster] ~ ~-200 ~
tp @e[x=-12,y=77,z=-7,dx=18,dy=12,dz=19,type=slime] ~ ~-200 ~


scoreboard players tag @a add getCoin {Inventory:[{id:"minecraft:gold_nugget"}]}
scoreboard players add @a[tag=getCoin] coins 1
clear @a[tag=getCoin] gold_nugget 0 1
scoreboard players tag @a remove getCoin

scoreboard players tag @e[type=item] add kill {Item:{id:"minecraft:tripwire_hook"}}
execute @a ~ ~ ~ kill @e[type=item,tag=kill]

function dungeon:regenerate

execute @a ~ ~ ~ execute @e[tag=title,rm=3] ~ ~ ~ entitydata @s {CustomNameVisible:0}
execute @a ~ ~ ~ execute @e[tag=title,r=3] ~ ~ ~ entitydata @s {CustomNameVisible:1}
execute @a ~ ~ ~ execute @e[tag=titleintro,rm=10,r=40] ~ ~ ~ entitydata @s {CustomNameVisible:0}
execute @a ~ ~ ~ execute @e[tag=titleintro,r=10] ~ ~ ~ entitydata @s {CustomNameVisible:1}
execute @e[tag=titleintro] ~ ~0.4 ~ particle smoke ~ ~ ~ 0.1 0.2 0.1 0.001 2

scoreboard players tag @e[type=item] add kill {Item:{id:"minecraft:paper"}}
execute @a ~ ~ ~ kill @e[type=item,tag=kill]
tp @a[score_useScroll_min=1] -3 77 3
scoreboard players set @a[score_useScroll_min=1] useScroll 0

scoreboard players add @a[score_kill_min=1] coins 1
scoreboard players remove @a[score_kill_min=1] kill 1

scoreboard players tag @a add bow1 {SelectedItem:{id:"minecraft:bow",tag:{bow1:1b}}}
execute @a[score_shoot_min=1,tag=bow1] ~ ~ ~ scoreboard players tag @e[type=arrow,c=1] add bow1arrow
scoreboard players tag @a remove bow1
scoreboard players set @a shoot 0
scoreboard players tag @e[type=arrow,tag=bow1arrow] add inGround1 {inGround:1b}
execute @e[tag=inGround1] ~ ~ ~ summon minecraft:creeper ~ ~ ~ {NoGravity:1b,Attributes:[{Name:"generic.movementSpeed",Base:0f}],Silent:1,Invulnerable:1,Fuse:0,ignited:1,Tags:["monster","instantCreeper"]}
kill @e[tag=inGround1]

scoreboard players operation @a[score_death_min=1] coins /= 2 coins
scoreboard players set @a death 0

gamerule doMobLoot false
execute @e[tag=boss] ~ ~ ~ scoreboard players set @e[tag=stats] grcount 10
execute @e[tag=stats,score_grcount_min=1] ~ ~ ~ gamerule doMobLoot true
scoreboard players remove @e[tag=stats] grcount 1
scoreboard players tag @a remove bosskill
scoreboard players tag @a add bosskill {Inventory:[{id:"minecraft:stained_glass_pane",tag:{crystal:1b}}]}
function dungeon:bosskill if @a[tag=bosskill]

execute @r ~ ~ ~ detect -3 77 2 stone_button 13 function dungeon:buttonpress
setblock -3 77 2 stone_button 5
execute @r ~ ~ ~ detect -3 82 10 stained_glass * particle totem -3 82 10 0.3 0.3 0.3 0.1 2
execute @r ~ ~ ~ detect -10 82 2 stained_glass * particle totem -10 82 2 0.3 0.3 0.3 0.1 2
execute @r ~ ~ ~ detect -3 82 -5 stained_glass * particle totem -3 82 -5 0.3 0.3 0.3 0.1 2
execute @r ~ ~ ~ detect 4 82 2 stained_glass * particle totem 4 82 2 0.3 0.3 0.3 0.1 2

function dungeon:introtrackingshot if @a[tag=trashot23770]
function dungeon:intro2trackingshot if @a[tag=trashot96999]
function dungeon:intro3trackingshot if @a[tag=trashot73923]
function dungeon:intro4trackingshot if @a[tag=trashot93842]
function dungeon:intro5trackingshot if @a[tag=trashot41738]

function dungeon:speedrun

function dungeon:endeanimation if @a[score_endetimer_min=1]

execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_block 1 effect @s levitation 1 7 true
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_block 1 particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 5

execute @a[x=-3,y=77,z=2,r=100,tag=!added] ~ ~ ~ scoreboard players add @e[tag=stats] totalppw 1
scoreboard players tag @a[x=-3,y=77,z=2,r=100,tag=!added] add added
