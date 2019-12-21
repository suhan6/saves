#summon armor_stand ~ ~1 ~ {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}

execute @e[tag=flow] ~ ~ ~ detect ~ ~ ~ air 0 kill @s
execute @e[tag=flownow] ~ ~ ~ detect ~ ~1 ~ concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~ ~1 ~ {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=flownow] ~ ~ ~ detect ~ ~-1 ~ concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~ ~-1 ~ {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=flownow] ~ ~ ~ detect ~1 ~ ~ concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~1 ~ ~ {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=flownow] ~ ~ ~ detect ~-1 ~ ~ concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=flownow] ~ ~ ~ detect ~ ~ ~1 concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~ ~ ~1 {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=flownow] ~ ~ ~ detect ~ ~ ~-1 concrete 1 execute @s[tag=!flownow2] ~ ~ ~ execute @s[tag=!flownow3] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Tags:["flow"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
scoreboard players tag @e[tag=flownow3] add flownow4
scoreboard players tag @e[tag=flownow2] add flownow3
scoreboard players tag @e[tag=flownow] add flownow2
scoreboard players tag @e[tag=flow] add flownow
execute @e[tag=flow] ~ ~ ~ setblock ~ ~ ~ concrete 14
execute @e[tag=flownow] ~ ~ ~ setblock ~ ~ ~ concrete 14
execute @e[tag=flownow2] ~ ~ ~ setblock ~ ~ ~ concrete 14
execute @e[tag=flownow3] ~ ~ ~ setblock ~ ~ ~ concrete 1
kill @e[tag=flownow3]