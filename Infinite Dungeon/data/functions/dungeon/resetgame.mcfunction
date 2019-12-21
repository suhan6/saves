#Dungeon
fill 66 76 -67 27 88 -8 air
fill 26 88 -67 -13 76 -8 air
fill -14 88 -8 -53 76 -67 air
fill -73 88 -67 -54 76 52 air
fill -73 88 72 46 76 53 air
fill 66 87 72 47 76 -7 air
fill 46 88 -7 7 76 52 air
fill 6 76 13 -53 88 52 air
fill -14 88 -7 -53 76 12 air

#kill
kill @e[type=item]
kill @e[tag=monster]
kill @e[tag=summon]
kill @e[type=arrow]

#reset crystals
setblock -3 82 10 air
setblock -10 82 2 air
setblock -3 82 -5 air
setblock 4 82 2 air

#reset other stuff
scoreboard players set @e[tag=stats] bosslevel 1
clear @a
scoreboard players set @a endetimer 0
fill -3 77 12 -4 79 12 iron_bars
fill -13 77 3 -13 79 2 iron_bars
fill -4 77 -7 -3 79 -7 iron_bars
fill 6 77 2 6 79 3 iron_bars

spawnpoint @a -2 77 2