tellraw @a ["",{"text":"\n"},{"text":"Starting ","color":"gold"},{"text":"game... Please ","color":"gray"},{"text":"wait","color":"gold"},{"text":"...","color":"gray"},{"text":"\n "}]
function dungeon:resetgame
execute @e[tag=stats] ~ ~ ~ execute @s[tag=!speedrun] ~ ~ ~ tp @a 4016 77 57
execute @e[tag=stats] ~ ~ ~ execute @s[tag=speedrun] ~ ~ ~ tp @a 8 8 8
execute @e[tag=stats] ~ ~ ~ execute @s[tag=speedrun] ~ ~ ~ scoreboard players tag @a add startrun
execute @e[tag=stats] ~ ~ ~ execute @s[tag=speedrun] ~ ~ ~ function dungeon:startitems
execute @e[tag=speedrun] ~ ~ ~ scoreboard players tag @a add startrun
scoreboard players set @a coins 0
scoreboard players set @e[tag=stats] totalppw 0
scoreboard players tag @a remove added
gamemode adventure @a
