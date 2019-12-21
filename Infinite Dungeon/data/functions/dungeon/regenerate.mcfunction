


execute @a[tag=!regenerate,x=-3,y=91,z=3,r=4,m=2] ~ ~ ~ tp @a @s

tellraw @a[tag=!regenerate,x=-3,y=91,z=3,r=4,m=2] ["",{"text":"\n"},{"text":"Regenerating","color":"gold"},{"text":"... All players will be ","color":"gray"},{"text":"teleported","color":"gold"},{"text":"\nto the ","color":"gray"},{"text":"viewing platform","color":"gold"},{"text":"\n"},{"text":"Please ","color":"gray"},{"text":"stand by","color":"gold"},{"text":"\n "}]

function dungeon:buildwhole if @a[tag=!regenerate,x=-3,y=91,z=3,r=4,m=2]

tellraw @a[tag=!regenerate,x=-3,y=91,z=3,r=4,m=2] ["",{"text":"\n"},{"text":"Succesfully","color":"gold"},{"text":" regenerated the ","color":"gray"},{"text":"dungeon","color":"gold"},{"text":".\nPlease be ","color":"gray"},{"text":"careful","color":"gold"},{"text":".","color":"gray"},{"text":"\n "}]

scoreboard players tag @a[tag=!regenerate,x=-3,y=91,z=3,r=4,m=2] add regenerate
scoreboard players tag @a[tag=regenerate,x=-3,y=91,z=3,rm=8,m=2] remove regenerate
