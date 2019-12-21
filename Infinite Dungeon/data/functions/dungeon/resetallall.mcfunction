tellraw @a ["",{"text":"\n   "},{"selector":"@a[x=4,y=77,z=5,dy=1,dx=0,dz=3]","color":"red"},{"text":" gave up","color":"red"},{"text":".","color":"gray"},{"text":"\n   "},{"text":"Please","italic":true,"color":"gold"},{"text":"! We need your ","italic":true,"color":"gray"},{"text":"help","italic":true,"color":"gold"},{"text":"!","italic":true,"color":"gray"},{"text":"\n "}]
tp @a -10023 48 32 0 5
function dungeon:resetgame
scoreboard players tag @a add resetrun
clear @a