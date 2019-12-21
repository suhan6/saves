kill @e[tag=monster]
kill @e[tag=summon]
kill @e[type=arrow]

kill @e[tag=builder]
summon armor_stand 7 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

summon armor_stand 27 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

summon armor_stand 47 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

summon armor_stand -13 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createlinemiddle
kill @e[tag=builder]

summon armor_stand -33 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

summon armor_stand -53 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

summon armor_stand -73 76 -67 {Tags:["builder"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
function dungeon:createline
kill @e[tag=builder]

kill @e[type=item]

#open doors
fill -3 77 12 -4 79 12 air
fill -13 77 3 -13 79 2 air
fill -4 77 -7 -3 79 -7 air
fill 6 77 2 6 79 3 air
