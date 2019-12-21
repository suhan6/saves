####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# MAY 12 2018 / MARCH 30 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

#scoreboard objectives setdisplay sidebar PinkTP
#scoreboard objectives setdisplay sidebar PinkTPTimer
#scoreboard objectives setdisplay sidebar GreenTP
#scoreboard objectives setdisplay sidebar GreenTPTimer


# ORANGE TP
execute if block -23 87 1091 redstone_lamp[lit=true] run scoreboard objectives add OrangeTP dummy
scoreboard players set @e[tag=MainHubAEC] OrangeTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] OrangeTP 1
execute align x align y align z run execute as @a[x=-24,y=88,z=1090,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] OrangeTP 1

execute if entity @e[scores={OrangeTP=1..}] run scoreboard objectives add OrangeTPTimer dummy
execute if entity @e[scores={OrangeTPTimer=25..}] run particle portal -23 89 1091 0.7 1 0.7 0 50 force
execute if entity @e[scores={OrangeTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={OrangeTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={OrangeTPTimer=105}] run setblock -23 88 1091 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={OrangeTPTimer=105}] run teleport @a 33 4 65 0 -90

execute if entity @e[scores={OrangeTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=-24,y=88,z=1090,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={OrangeTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={OrangeTP=1,OrangeTPTimer=..-1}] OrangeTPTimer 1
scoreboard players set @e[scores={OrangeTP=2,OrangeTPTimer=1..}] OrangeTPTimer -1
scoreboard players add @e[scores={OrangeTP=1}] OrangeTPTimer 1
scoreboard players remove @e[scores={OrangeTP=2..}] OrangeTPTimer 1

execute if block -23 87 1091 redstone_lamp[lit=false] run scoreboard objectives remove OrangeTP
execute align x align y align z run execute unless entity @a[x=-24,y=88,z=1090,dx=2,dy=2,dz=2] run scoreboard objectives remove OrangeTP
execute align x align y align z run execute unless entity @a[x=-24,y=88,z=1090,dx=2,dy=2,dz=2] run scoreboard objectives remove OrangeTPTimer


# YELLOW TP
execute if block -62 73 1057 redstone_lamp[lit=true] run scoreboard objectives add YellowTP dummy
scoreboard players set @e[tag=MainHubAEC] YellowTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] YellowTP 1
execute align x align y align z run execute as @a[x=-63,y=74,z=1056,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] YellowTP 1

execute if entity @e[scores={YellowTP=1..}] run scoreboard objectives add YellowTPTimer dummy
execute if entity @e[scores={YellowTPTimer=25..}] run particle portal -62 75 1057 0.7 1 0.7 0 50 force
execute if entity @e[scores={YellowTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={YellowTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={YellowTPTimer=105}] run setblock -62 74 1057 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={YellowTPTimer=105}] run teleport @a 1 4 65 0 -90

execute if entity @e[scores={YellowTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=-63,y=74,z=1056,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={YellowTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={YellowTP=1,YellowTPTimer=..-1}] YellowTPTimer 1
scoreboard players set @e[scores={YellowTP=2,YellowTPTimer=1..}] YellowTPTimer -1
scoreboard players add @e[scores={YellowTP=1}] YellowTPTimer 1
scoreboard players remove @e[scores={YellowTP=2..}] YellowTPTimer 1

execute if block -62 73 1057 redstone_lamp[lit=false] run scoreboard objectives remove YellowTP
execute align x align y align z run execute unless entity @a[x=-63,y=74,z=1056,dx=2,dy=2,dz=2] run scoreboard objectives remove YellowTP
execute align x align y align z run execute unless entity @a[x=-63,y=74,z=1056,dx=2,dy=2,dz=2] run scoreboard objectives remove YellowTPTimer


# LIME TP
execute if block -65 90 981 redstone_lamp[lit=true] run scoreboard objectives add LimeTP dummy
scoreboard players set @e[tag=MainHubAEC] LimeTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] LimeTP 1
execute align x align y align z run execute as @a[x=-66,y=91,z=980,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] LimeTP 1

execute if entity @e[scores={LimeTP=1..}] run scoreboard objectives add LimeTPTimer dummy
execute if entity @e[scores={LimeTPTimer=25..}] run particle portal -65 92 981 0.7 1 0.7 0 50 force
execute if entity @e[scores={LimeTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={LimeTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={LimeTPTimer=105}] run setblock -65 91 981 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={LimeTPTimer=105}] run teleport @a 33 4 33 0 -90

execute if entity @e[scores={LimeTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=-66,y=91,z=980,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={LimeTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={LimeTP=1,LimeTPTimer=..-1}] LimeTPTimer 1
scoreboard players set @e[scores={LimeTP=2,LimeTPTimer=1..}] LimeTPTimer -1
scoreboard players add @e[scores={LimeTP=1}] LimeTPTimer 1
scoreboard players remove @e[scores={LimeTP=2..}] LimeTPTimer 1

execute if block -65 90 981 redstone_lamp[lit=false] run scoreboard objectives remove LimeTP
execute align x align y align z run execute unless entity @a[x=-66,y=91,z=980,dx=2,dy=2,dz=2] run scoreboard objectives remove LimeTP
execute align x align y align z run execute unless entity @a[x=-66,y=91,z=980,dx=2,dy=2,dz=2] run scoreboard objectives remove LimeTPTimer


# PINK TP
execute if block -33 81 930 redstone_lamp[lit=true] run scoreboard objectives add PinkTP dummy
scoreboard players set @e[tag=MainHubAEC] PinkTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] PinkTP 1
execute align x align y align z run execute as @a[x=-34,y=82,z=929,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] PinkTP 1

execute if entity @e[scores={PinkTP=1..}] run scoreboard objectives add PinkTPTimer dummy
execute if entity @e[scores={PinkTPTimer=25..}] run particle portal -33 83 930 0.7 1 0.7 0 50 force
execute if entity @e[scores={PinkTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={PinkTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={PinkTPTimer=105}] run setblock -33 82 930 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={PinkTPTimer=105}] run teleport @a 33 4 -31 0 -90

execute if entity @e[scores={PinkTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=-34,y=82,z=929,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={PinkTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={PinkTP=1,PinkTPTimer=..-1}] PinkTPTimer 1
scoreboard players set @e[scores={PinkTP=2,PinkTPTimer=1..}] PinkTPTimer -1
scoreboard players add @e[scores={PinkTP=1}] PinkTPTimer 1
scoreboard players remove @e[scores={PinkTP=2..}] PinkTPTimer 1

execute if block -33 81 930 redstone_lamp[lit=false] run scoreboard objectives remove PinkTP
execute align x align y align z run execute unless entity @a[x=-34,y=82,z=929,dx=2,dy=2,dz=2] run scoreboard objectives remove PinkTP
execute align x align y align z run execute unless entity @a[x=-34,y=82,z=929,dx=2,dy=2,dz=2] run scoreboard objectives remove PinkTPTimer


# CYAN TP
execute if block 10 67 888 redstone_lamp[lit=true] run scoreboard objectives add CyanTP dummy
scoreboard players set @e[tag=MainHubAEC] CyanTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] CyanTP 1
execute align x align y align z run execute as @a[x=9,y=68,z=887,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] CyanTP 1

execute if entity @e[scores={CyanTP=1..}] run scoreboard objectives add CyanTPTimer dummy
execute if entity @e[scores={CyanTPTimer=25..}] run particle portal 10 69 888 0.7 1 0.7 0 50 force
execute if entity @e[scores={CyanTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={CyanTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={CyanTPTimer=105}] run setblock 10 68 888 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={CyanTPTimer=105}] run teleport @a -31 4 33 0 -90

execute if entity @e[scores={CyanTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=9,y=68,z=887,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={CyanTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={CyanTP=1,CyanTPTimer=..-1}] CyanTPTimer 1
scoreboard players set @e[scores={CyanTP=2,CyanTPTimer=1..}] CyanTPTimer -1
scoreboard players add @e[scores={CyanTP=1}] CyanTPTimer 1
scoreboard players remove @e[scores={CyanTP=2..}] CyanTPTimer 1

execute if block 10 67 888 redstone_lamp[lit=false] run scoreboard objectives remove CyanTP
execute align x align y align z run execute unless entity @a[x=9,y=68,z=887,dx=2,dy=2,dz=2] run scoreboard objectives remove CyanTP
execute align x align y align z run execute unless entity @a[x=9,y=68,z=887,dx=2,dy=2,dz=2] run scoreboard objectives remove CyanTPTimer


# PURPLE TP
execute if block 89 38 824 redstone_lamp[lit=true] run scoreboard objectives add PurpleTP dummy
scoreboard players set @e[tag=MainHubAEC] PurpleTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] PurpleTP 1
execute align x align y align z run execute as @a[x=88,y=39,z=823,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] PurpleTP 1

execute if entity @e[scores={PurpleTP=1..}] run scoreboard objectives add PurpleTPTimer dummy
execute if entity @e[scores={PurpleTPTimer=25..}] run particle portal 89 40 824 0.7 1 0.7 0 50 force
execute if entity @e[scores={PurpleTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={PurpleTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={PurpleTPTimer=105}] run setblock 89 39 824 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={PurpleTPTimer=105}] run teleport @a -31 4 65 0 -90

execute if entity @e[scores={PurpleTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=88,y=39,z=823,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={PurpleTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={PurpleTP=1,PurpleTPTimer=..-1}] PurpleTPTimer 1
scoreboard players set @e[scores={PurpleTP=2,PurpleTPTimer=1..}] PurpleTPTimer -1
scoreboard players add @e[scores={PurpleTP=1}] PurpleTPTimer 1
scoreboard players remove @e[scores={PurpleTP=2..}] PurpleTPTimer 1

execute if block 89 38 824 redstone_lamp[lit=false] run scoreboard objectives remove PurpleTP
execute align x align y align z run execute unless entity @a[x=88,y=39,z=823,dx=2,dy=2,dz=2] run scoreboard objectives remove PurpleTP
execute align x align y align z run execute unless entity @a[x=88,y=39,z=823,dx=2,dy=2,dz=2] run scoreboard objectives remove PurpleTPTimer


# BLUE TP
execute if block 60 93 940 redstone_lamp[lit=true] run scoreboard objectives add BlueTP dummy
scoreboard players set @e[tag=MainHubAEC] BlueTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] BlueTP 1
execute align x align y align z run execute as @a[x=59,y=94,z=939,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] BlueTP 1

execute if entity @e[scores={BlueTP=1..}] run scoreboard objectives add BlueTPTimer dummy
execute if entity @e[scores={BlueTPTimer=25..}] run particle portal 60 95 940 0.7 1 0.7 0 50 force
execute if entity @e[scores={BlueTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={BlueTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={BlueTPTimer=105}] run setblock 60 94 940 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={BlueTPTimer=105}] run teleport @a -31 4 1 0 -90

execute if entity @e[scores={BlueTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=59,y=94,z=939,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={BlueTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={BlueTP=1,BlueTPTimer=..-1}] BlueTPTimer 1
scoreboard players set @e[scores={BlueTP=2,BlueTPTimer=1..}] BlueTPTimer -1
scoreboard players add @e[scores={BlueTP=1}] BlueTPTimer 1
scoreboard players remove @e[scores={BlueTP=2..}] BlueTPTimer 1

execute if block 60 93 940 redstone_lamp[lit=false] run scoreboard objectives remove BlueTP
execute align x align y align z run execute unless entity @a[x=59,y=94,z=939,dx=2,dy=2,dz=2] run scoreboard objectives remove BlueTP
execute align x align y align z run execute unless entity @a[x=59,y=94,z=939,dx=2,dy=2,dz=2] run scoreboard objectives remove BlueTPTimer


# BROWN TP
execute if block 106 77 980 redstone_lamp[lit=true] run scoreboard objectives add BrownTP dummy
scoreboard players set @e[tag=MainHubAEC] BrownTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] BrownTP 1
execute align x align y align z run execute as @a[x=105,y=78,z=979,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] BrownTP 1

execute if entity @e[scores={BrownTP=1..}] run scoreboard objectives add BrownTPTimer dummy
execute if entity @e[scores={BrownTPTimer=25..}] run particle portal 106 79 980 0.7 1 0.7 0 50 force
execute if entity @e[scores={BrownTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={BrownTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={BrownTPTimer=105}] run setblock 106 78 980 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={BrownTPTimer=105}] run teleport @a 1 4 -31 0 -90

execute if entity @e[scores={BrownTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=105,y=78,z=979,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={BrownTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={BrownTP=1,BrownTPTimer=..-1}] BrownTPTimer 1
scoreboard players set @e[scores={BrownTP=2,BrownTPTimer=1..}] BrownTPTimer -1
scoreboard players add @e[scores={BrownTP=1}] BrownTPTimer 1
scoreboard players remove @e[scores={BrownTP=2..}] BrownTPTimer 1

execute if block 106 77 980 redstone_lamp[lit=false] run scoreboard objectives remove BrownTP
execute align x align y align z run execute unless entity @a[x=105,y=78,z=979,dx=2,dy=2,dz=2] run scoreboard objectives remove BrownTP
execute align x align y align z run execute unless entity @a[x=105,y=78,z=979,dx=2,dy=2,dz=2] run scoreboard objectives remove BrownTPTimer


# RED TP
execute if block 105 90 1049 redstone_lamp[lit=true] run scoreboard objectives add RedTP dummy
scoreboard players set @e[tag=MainHubAEC] RedTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] RedTP 1
execute align x align y align z run execute as @a[x=104,y=91,z=1048,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] RedTP 1

execute if entity @e[scores={RedTP=1..}] run scoreboard objectives add RedTPTimer dummy
execute if entity @e[scores={RedTPTimer=25..}] run particle portal 105 92 1049 0.7 1 0.7 0 50 force
execute if entity @e[scores={RedTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={RedTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={RedTPTimer=105}] run setblock 105 91 1049 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={RedTPTimer=105}] run teleport @a 33 4 1 0 -90

execute if entity @e[scores={RedTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=104,y=91,z=1048,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={RedTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={RedTP=1,RedTPTimer=..-1}] RedTPTimer 1
scoreboard players set @e[scores={RedTP=2,RedTPTimer=1..}] RedTPTimer -1
scoreboard players add @e[scores={RedTP=1}] RedTPTimer 1
scoreboard players remove @e[scores={RedTP=2..}] RedTPTimer 1

execute if block 105 90 1049 redstone_lamp[lit=false] run scoreboard objectives remove RedTP
execute align x align y align z run execute unless entity @a[x=104,y=91,z=1048,dx=2,dy=2,dz=2] run scoreboard objectives remove RedTP
execute align x align y align z run execute unless entity @a[x=104,y=91,z=1048,dx=2,dy=2,dz=2] run scoreboard objectives remove RedTPTimer


# BLACK TP
execute if block 47 89 1090 redstone_lamp[lit=true] run scoreboard objectives add BlackTP dummy
scoreboard players set @e[tag=MainHubAEC] BlackTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] BlackTP 1
execute align x align y align z run execute as @a[x=46,y=90,z=1089,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] BlackTP 1

execute if entity @e[scores={BlackTP=1..}] run scoreboard objectives add BlackTPTimer dummy
execute if entity @e[scores={BlackTPTimer=25..}] run particle portal 47 91 1090 0.7 1 0.7 0 50 force
execute if entity @e[scores={BlackTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={BlackTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={BlackTPTimer=105}] run setblock 47 90 1090 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={BlackTPTimer=105}] run teleport @a -31 4 -31 0 -90

execute if entity @e[scores={BlackTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=46,y=90,z=1089,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={BlackTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={BlackTP=1,BlackTPTimer=..-1}] BlackTPTimer 1
scoreboard players set @e[scores={BlackTP=2,BlackTPTimer=1..}] BlackTPTimer -1
scoreboard players add @e[scores={BlackTP=1}] BlackTPTimer 1
scoreboard players remove @e[scores={BlackTP=2..}] BlackTPTimer 1

execute if block 47 89 1090 redstone_lamp[lit=false] run scoreboard objectives remove BlackTP
execute align x align y align z run execute unless entity @a[x=46,y=90,z=1089,dx=2,dy=2,dz=2] run scoreboard objectives remove BlackTP
execute align x align y align z run execute unless entity @a[x=46,y=90,z=1089,dx=2,dy=2,dz=2] run scoreboard objectives remove BlackTPTimer


# GREEN TP
execute if block 15 70 1033 redstone_lamp[lit=true] run scoreboard objectives add GreenTP dummy
scoreboard players set @e[tag=MainHubAEC] GreenTP 1
execute as @a run scoreboard players add @e[tag=MainHubAEC] GreenTP 1
execute align x align y align z run execute as @a[x=14,y=71,z=1031,dx=2,dy=2,dz=2] run scoreboard players remove @e[tag=MainHubAEC] GreenTP 1

execute if entity @e[scores={GreenTP=1..}] run scoreboard objectives add GreenTPTimer dummy
execute if entity @e[scores={GreenTPTimer=25..}] run particle portal 15 72 1033 0.7 1 0.7 0 50 force
execute if entity @e[scores={GreenTPTimer=25}] run execute at @a run playsound block.portal.trigger master @a
execute if entity @e[scores={GreenTPTimer=104}] run effect give @a blindness 2 255 true
#execute if entity @e[scores={GreenTPTimer=105}] run setblock 15 71 1033 heavy_weighted_pressure_plate[power=0]
execute if entity @e[scores={GreenTPTimer=105}] run teleport @a 1 4 33 0 -90

execute if entity @e[scores={GreenTPTimer=1..}] run execute align x align y align z run execute unless entity @a[x=14,y=71,z=1031,dx=2,dy=2,dz=2] run stopsound @a

execute if entity @e[scores={GreenTPTimer=-100}] run tellraw @a {"text":"","extra":[{"text":"۞ All players must be on teleporter for activation ۞","color":"white"}]}

scoreboard players set @e[scores={GreenTP=1,GreenTPTimer=..-1}] GreenTPTimer 1
scoreboard players set @e[scores={GreenTP=2,GreenTPTimer=1..}] GreenTPTimer -1
scoreboard players add @e[scores={GreenTP=1}] GreenTPTimer 1
scoreboard players remove @e[scores={GreenTP=2..}] GreenTPTimer 1

execute if block 15 70 1033 redstone_lamp[lit=false] run scoreboard objectives remove GreenTP
execute align x align y align z run execute unless entity @a[x=14,y=71,z=1031,dx=2,dy=2,dz=2] run scoreboard objectives remove GreenTP
execute align x align y align z run execute unless entity @a[x=14,y=71,z=1031,dx=2,dy=2,dz=2] run scoreboard objectives remove GreenTPTimer


# BEACON BEAMS
execute if block 11 6 14 gravel run execute if block -23 87 1091 barrier run setblock -23 87 1091 redstone_lamp
execute if block 11 6 14 gravel run execute if block -23 88 1091 orange_carpet run setblock -23 88 1091 heavy_weighted_pressure_plate
execute if block 11 6 14 orange_wool run execute if block -23 87 1091 redstone_lamp run setblock -23 87 1091 barrier
execute if block 11 6 14 orange_wool run execute if block -23 88 1091 heavy_weighted_pressure_plate run setblock -23 88 1091 orange_carpet

execute if block 10 6 14 gravel run execute if block -62 73 1057 barrier run setblock -62 73 1057 redstone_lamp
execute if block 10 6 14 gravel run execute if block -62 74 1057 yellow_carpet run setblock -62 74 1057 heavy_weighted_pressure_plate
execute if block 10 6 14 yellow_wool run execute if block -62 73 1057 redstone_lamp run setblock -62 73 1057 barrier
execute if block 10 6 14 yellow_wool run execute if block -62 74 1057 heavy_weighted_pressure_plate run setblock -62 74 1057 yellow_carpet

execute if block 9 6 14 gravel run execute if block -65 90 981 barrier run setblock -65 90 981 redstone_lamp
execute if block 9 6 14 gravel run execute if block -65 91 981 lime_carpet run setblock -65 91 981 heavy_weighted_pressure_plate
execute if block 9 6 14 lime_wool run execute if block -65 90 981 redstone_lamp run setblock -65 90 981 barrier
execute if block 9 6 14 lime_wool run execute if block -65 91 981 heavy_weighted_pressure_plate run setblock -65 91 981 lime_carpet

execute if block 8 6 14 gravel run execute if block -33 81 930 barrier run setblock -33 81 930 redstone_lamp
execute if block 8 6 14 gravel run execute if block -33 82 930 pink_carpet run setblock -33 82 930 heavy_weighted_pressure_plate
execute if block 8 6 14 pink_wool run execute if block -33 81 930 redstone_lamp run setblock -33 81 930 barrier
execute if block 8 6 14 pink_wool run execute if block -33 82 930 heavy_weighted_pressure_plate run setblock -33 82 930 pink_carpet

execute if block 7 6 14 gravel run execute if block 10 67 888 barrier run setblock 10 67 888 redstone_lamp
execute if block 7 6 14 gravel run execute if block 10 68 888 cyan_carpet run setblock 10 68 888 heavy_weighted_pressure_plate
execute if block 7 6 14 cyan_wool run execute if block 10 67 888 redstone_lamp run setblock 10 67 888 barrier
execute if block 7 6 14 cyan_wool run execute if block 10 68 888 heavy_weighted_pressure_plate run setblock 10 68 888 cyan_carpet

execute if block 6 6 14 gravel run execute if block 89 38 824 barrier run setblock 89 38 824 redstone_lamp
execute if block 6 6 14 gravel run execute if block 89 39 824 purple_carpet run setblock 89 39 824 heavy_weighted_pressure_plate
execute if block 6 6 14 purple_wool run execute if block 89 38 824 redstone_lamp run setblock 89 38 824 barrier
execute if block 6 6 14 purple_wool run execute if block 89 39 824 heavy_weighted_pressure_plate run setblock 89 39 824 purple_carpet

execute if block 5 6 14 gravel run execute if block 60 93 940 barrier run setblock 60 93 940 redstone_lamp
execute if block 5 6 14 gravel run execute if block 60 94 940 blue_carpet run setblock 60 94 940 heavy_weighted_pressure_plate
execute if block 5 6 14 blue_wool run execute if block 60 93 940 redstone_lamp run setblock 60 93 940 barrier
execute if block 5 6 14 blue_wool run execute if block 60 94 940 heavy_weighted_pressure_plate run setblock 60 94 940 blue_carpet

execute if block 4 6 14 gravel run execute if block 106 77 980 barrier run setblock 106 77 980 redstone_lamp
execute if block 4 6 14 gravel run execute if block 106 78 980 brown_carpet run setblock 106 78 980 heavy_weighted_pressure_plate
execute if block 4 6 14 brown_wool run execute if block 106 77 980 redstone_lamp run setblock 106 77 980 barrier
execute if block 4 6 14 brown_wool run execute if block 106 78 980 heavy_weighted_pressure_plate run setblock 106 78 980 brown_carpet

execute if block 3 6 14 gravel run execute if block 105 90 1049 barrier run setblock 105 90 1049 redstone_lamp
execute if block 3 6 14 gravel run execute if block 105 91 1049 red_carpet run setblock 105 91 1049 heavy_weighted_pressure_plate
execute if block 3 6 14 red_wool run execute if block 105 90 1049 redstone_lamp run setblock 105 90 1049 barrier
execute if block 3 6 14 red_wool run execute if block 105 91 1049 heavy_weighted_pressure_plate run setblock 105 91 1049 red_carpet

execute if block 2 6 14 gravel run execute if block 47 89 1090 barrier run setblock 47 89 1090 redstone_lamp
execute if block 2 6 14 gravel run execute if block 47 90 1090 black_carpet run setblock 47 90 1090 heavy_weighted_pressure_plate
execute if block 2 6 14 black_wool run execute if block 47 89 1090 redstone_lamp run setblock 47 89 1090 barrier
execute if block 2 6 14 black_wool run execute if block 47 90 1090 heavy_weighted_pressure_plate run setblock 47 90 1090 black_carpet
