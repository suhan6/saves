###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#    setup.mcfunction     #
#                         #
###########################

gamerule doEntityDrops false
gamerule keepInventory true
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
setworldspawn 8 203 84
gamerule spawnRadius 0
scoreboard objectives add DEATHS_LAST dummy
scoreboard objectives add PLAYER_SPAWNED dummy
scoreboard objectives add SPEEDRUN dummy
scoreboard objectives add SPEEDRUN_LAST dummy
scoreboard objectives add SEER_TALK dummy
scoreboard players set @e[type=armor_stand,name="Boss"] SEER_TALK 0
scoreboard objectives add HELP dummy
scoreboard objectives add HELP_TIME dummy
scoreboard objectives add YELLOW_PROG dummy
scoreboard objectives add MAGENTA_PROG dummy
scoreboard objectives add ORANGE_PROG dummy
scoreboard objectives add LIME_PROG dummy
scoreboard objectives add TUTSTAGE dummy

#setblock 87 48 89 minecraft:spawner{SpawnCount:5,RequiredPlayerRange:30,MaxNearbyEntities:10,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Tags:["deathEffect"],CustomName:"{\"text\":\"Rocket Scientist\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:firework_rocket",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"dls"}]}}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"372b610d-f067-4688-87d1-6c044f47b12b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyZjQ4ZjM0ZDIyZGVkNzQwNGY3NmU4YTEzMmFmNWQ3OTE5YzhkY2Q1MWRmNmU3YTg1ZGRmYWM4NWFiIn19fQ=="}]}}}}],ActiveEffects:[{Id:12b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0.2},{Name:generic.attackDamage,Base:6}]}} destroy
#execute if block 70 45 67 spawner run clone 87 48 89 87 48 89 70 45 67
#execute if block 87 45 40 spawner run clone 87 48 89 87 48 89 87 45 40
#execute if block 73 48 17 spawner run clone 87 48 89 87 48 89 73 48 17
#execute if block 83 48 17 spawner run clone 87 48 89 87 48 89 83 48 17
#execute if block 84 51 -5 spawner run clone 87 48 89 87 48 89 84 51 -5
#execute if block 44 53 8 spawner run clone 87 48 89 87 48 89 44 53 8
#execute if block 32 51 18 spawner run clone 87 48 89 87 48 89 32 51 18
#execute if block 28 211 19 spawner run clone 87 48 89 87 48 89 28 211 19
#execute if block 2 51 37 spawner run clone 87 48 89 87 48 89 2 51 37
#execute if block 71 45 26 spawner run clone 87 48 89 87 48 89 71 45 26

#setblock 107 206 44 minecraft:spawner{SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Health:10f,CustomName:"{\"text\":\"Sol Corp Security\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Baton\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8290424}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8290424}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"48eede21-6c13-8071-f748-c18b597cb260",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU3NDI0NzVlZTVhZDViZWYzOThiYjQxOTQzYTUxNWRjYWE3N2RjZDcyMjI4YjUxOWVmNjljM2FhODZjNCJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:10}]}} destroy
#setblock -133 47 48 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -99 47 48 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -65 47 48 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -96 59 0 minecraft:spawner{SpawnRange:1,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,ActiveEffects:[{Id:28b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Health:14f,Tags:["Lunatic"],CustomName:"{\"text\":\"Lunatic Priest\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"High Tide\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"d782253c-63b7-45d5-b179-7a0e5601ed41",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjIyZTNhNTY5ZThkNTgxNDM3YzUwM2UyYWQxZDRiNTkxYmNiODI5MWE3MWVmN2IzNzM4OGVlYTNiMDhlNzIifX19"}]}}}}],Attributes:[{Name:generic.maxHealth,Base:16}]}} destroy
#setblock -68 63 44 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -80 61 10 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy

#setblock -96 61 41 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -96 61 63 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy

#setblock -220 13 39 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -225 21 52 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -235 6 73 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -249 20 65 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -251 12 48 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -233 18 35 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -235 43 45 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
#setblock -245 35 53 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy


# Lag hotfixes

#tag @e[type=item_frame] remove nodelete
# Tag item frames that should not be deleted
#tag @e[type=item_frame,x=-17,y=68,z=94,dx=1,dy=0,dz=0] add nodelete
#tag @e[type=item_frame,x=-17,y=68,z=72,dx=1,dy=0,dz=0] add nodelete

# Delete the rest
#kill @e[type=item_frame,tag=!nodelete]

# Tag paintings that should not be deleted
#tag @e[type=painting] remove nodelete
#tag @e[type=painting,x=-66,y=70,z=28,dx=0,dy=0,dz=0] add nodelete
#tag @e[type=painting,x=-7,y=70,z=-89,dx=1,dy=0,dz=0] add nodelete
#tag @e[type=painting,x=-24,y=69,z=-10,dx=4,dy=4,dz=4] add nodelete
#tag @e[type=painting,x=-30,y=69,z=-74,dx=4,dy=4,dz=4] add nodelete
#tag @e[type=painting,x=-14,y=71,z=-87,dx=6,dy=4,dz=4] add nodelete
#tag @e[type=painting,x=-17,y=67,z=80,dx=3,dy=0,dz=0] add nodelete
#tag @e[type=painting,x=-20,y=67,z=86,dx=3,dy=0,dz=0] add nodelete
#tag @e[type=painting,x=75,y=113,z=47,dx=5,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-62,y=70,z=15,dx=10,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-81,y=81,z=11,dx=10,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-109,y=81,z=37,dx=10,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-109,y=81,z=-10,dx=10,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-109,y=81,z=-22,dx=10,dy=5,dz=5] add nodelete
#tag @e[type=painting,x=-43,y=72,z=-22,dx=10,dy=5,dz=10] add nodelete
#tag @e[type=painting,x=6,y=18,z=-291,dx=10,dy=5,dz=10] add nodelete
#tag @e[type=painting,x=31,y=52,z=0,dx=2,dy=5,dz=20] add nodelete

# Delete the rest
#kill @e[type=painting,tag=!nodelete]

# Some setblocks & fills to make things prettier
#fill -14 66 81 -14 68 85 air
#setblock -77 73 -54 glass
#setblock -79 40 -75 glass
#setblock -57 41 -48 glass
#setblock -45 64 -21 glass
#setblock -52 64 -61 glass
#setblock -52 73 -14 glass
#fill 46 54 10 46 54 6 red_stained_glass
#fill 42 54 12 42 54 10 red_stained_glass
#fill 42 54 6 42 54 4 red_stained_glass
#fill 41 52 -4 43 52 -4 red_stained_glass
#fill 41 52 20 43 52 20 red_stained_glass
#fill 33 52 -2 33 52 0 red_stained_glass
#fill 33 52 16 33 52 18 red_stained_glass
#fill 41 52 2 41 52 14 red_stained_glass
#fill 43 52 14 42 52 14 red_stained_glass
#fill 43 52 2 42 52 2 red_stained_glass
#fill 54 54 4 54 54 6 red_stained_glass
#fill 54 54 10 54 54 12 red_stained_glass
#fill 54 54 16 54 54 18 red_stained_glass
#fill 14 51 45 14 54 50 air
#fill 32 51 45 32 54 50 air
#fill -50 72 -10 -49 73 -10 air
#fill -66 60 81 -66 61 81 air
#fill -68 62 80 -68 59 78 bookshelf
#setblock -53 64 -65 air

# Reduce number of spawners in the main city slightly
#setblock 17 70 94 air
#setblock -1 70 72 air
#clone -17 70 91 -17 70 91 -17 70 83
#setblock -17 70 91 air
#setblock -17 70 75 air
#setblock -28 70 103 air
#setblock -19 73 62 air
#setblock 37 69 -70 note_block
#setblock 36 69 -70 air
#setblock 115 78 52 air
#setblock 78 76 29 air
#setblock 105 77 61 air
#setblock 80 91 27 air
#setblock 80 91 77 air
#setblock -38 81 -24 air
#setblock -38 81 -51 air
#setblock -84 81 -51 air
#setblock -84 81 -24 air
#setblock -107 81 -12 air
#setblock -107 81 28 air
#setblock -67 59 81 air
#
#setblock -61 86 -29 iron_block
#setblock -51 72 -55 air
#setblock -71 72 -55 air
#setblock -71 72 -20 air
#setblock -51 72 -20 air
#setblock -77 39 -32 air
#setblock -74 39 -76 air
#setblock -48 39 -76 air
#setblock 115 23 -45 air
#setblock 83 69 52 air
#setblock 79 81 8 air
#setblock -62 56 88 air
#setblock -67 71 42 air
#setblock -67 71 62 air
#setblock 11 19 -77 iron_bars
#setblock 5 19 -77 iron_bars
#setblock 11 19 -53 iron_bars
#setblock 5 19 -53 iron_bars

# Kill all npc armor stands besides the controller
#kill @e[type=armor_stand,name=!Boss]

# Spawner updates
#setblock 81 41 52 minecraft:spawner{SpawnCount:2,SpawnRange:2,Delay:0,MinSpawnDelay:600,MaxSpawnDelay:800,SpawnData:{id:"minecraft:blaze",PersistenceRequired:0b,Health:14f,CustomName:"{\"text\":\"Firewall\",\"color\":\"gold\"}",Attributes:[{Name:generic.maxHealth,Base:14}]}} destroy
#clone 81 41 52 81 41 52 54 56 -7
#clone 81 41 52 81 41 52 14 53 8
#clone 81 41 52 81 41 52 2 53 8
#clone 81 41 52 81 41 52 21 9 62
#clone 81 41 52 81 41 52 -14 10 66
#clone 81 41 52 81 41 52 2 9 39
#clone 81 41 52 81 41 52 6 9 35
#clone 81 41 52 81 41 52 15 9 76
#clone 81 41 52 81 41 52 0 9 76
#clone 81 41 52 81 41 52 8 22 -124
#clone 81 41 52 81 41 52 27 9 -111
#clone 81 41 52 81 41 52 -3 5 -58
#clone 81 41 52 81 41 52 73 5 -89
#clone 81 41 52 81 41 52 45 7 -83
#clone 81 41 52 81 41 52 55 6 -93
#clone 81 41 52 81 41 52 44 51 37
#clone 81 41 52 81 41 52 19 211 28
#clone 81 41 52 81 41 52 53 76 117
#clone 81 41 52 81 41 52 45 76 117

# Delete chest in center until the time is right
#setblock 8 77 8 bedrock


#setblock 8 82 125 air

#setblock 91 71 75 redstone_torch{facing:north}

#setblock 94 74 79 glass
#setblock 93 74 80 white_stained_glass
#setblock 93 74 78 white_stained_glass
#setblock 95 74 78 white_stained_glass
#setblock 95 74 80 white_stained_glass

#setblock 37 72 -40 sea_lantern
#setblock -82 64 -47 sea_lantern

#setblock 85 70 52 air

