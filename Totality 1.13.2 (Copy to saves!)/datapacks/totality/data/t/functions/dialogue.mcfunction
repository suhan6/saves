###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#   dialogue.mcfunction   #
#                         #
###########################

# Calculate number of power supplies in player's inventory, and also count them towards victory
scoreboard players set @s SUPPLY_NUM 0
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:yellow_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] SUPPLY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:lime_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] SUPPLY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:orange_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] SUPPLY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:magenta_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] SUPPLY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:yellow_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] VICTORY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:lime_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] VICTORY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:orange_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] VICTORY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:magenta_wool"}]}] run scoreboard players add @s[scores={ENDING_OPEN=0}] VICTORY_NUM 1
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:yellow_wool"}]}] run advancement grant @a only t:completion/yellow
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:lime_wool"}]}] run advancement grant @a only t:completion/lime
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:orange_wool"}]}] run advancement grant @a only t:completion/orange
execute if entity @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25,nbt={Inventory:[{id:"minecraft:magenta_wool"}]}] run advancement grant @a only t:completion/magenta

# If one or more supplies are found, remove them and start the next dialogue
execute if entity @s[scores={SUPPLY_NUM=1..}] run clear @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25] lime_wool
execute if entity @s[scores={SUPPLY_NUM=1..}] run clear @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25] magenta_wool
execute if entity @s[scores={SUPPLY_NUM=1..}] run clear @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25] orange_wool
execute if entity @s[scores={SUPPLY_NUM=1..}] run clear @a[x=-5,y=77,z=-5,dx=25,dy=10,dz=25] yellow_wool
execute if entity @s[scores={SUPPLY_NUM=1..,VICTORY_NUM=1}] run scoreboard players set @s TALK_NUM 1
execute if entity @s[scores={SUPPLY_NUM=1..,VICTORY_NUM=2}] run scoreboard players set @s TALK_NUM 2
execute if entity @s[scores={SUPPLY_NUM=1..,VICTORY_NUM=3}] run scoreboard players set @s TALK_NUM 3
execute if entity @s[scores={SUPPLY_NUM=1..,VICTORY_NUM=4}] run scoreboard players set @s TALK_NUM 4
execute if entity @s[scores={SUPPLY_NUM=1}] run scoreboard players set @s TALK_TIME 0

# If more than one supply is turned in at once, say an extra line and delay the dialogue
execute if entity @s[scores={SUPPLY_NUM=4}] run tellraw @a {"text":"Wow, all four sources at once?! You must be one of those speedrunners my uncle warned me about. Anyway ...","color":"gold"}
execute if entity @s[scores={SUPPLY_NUM=3}] run tellraw @a {"text":"Three sources at once?! Well done.","color":"gold"}
execute if entity @s[scores={SUPPLY_NUM=2}] run tellraw @a {"text":"Two sources at once, eh? Very good.","color":"gold"}
execute if entity @s[scores={SUPPLY_NUM=2..}] run scoreboard players set @s TALK_TIME -50

# Resume after being interrupted
execute if entity @s[scores={BOSS_TALKING=0,TALK_TIME=1..20000,TALK_NUM=..5}] run tellraw @a {"text":"Resuming exposition dump ...","color":"yellow"}

# Set talking bool to true if the entity still has dialogue
execute if entity @s[scores={BOSS_TALKING=0,TALK_TIME=..20000,TALK_NUM=..5}] run scoreboard players set @s BOSS_TALKING 1

# Intro dialogue sounds
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=40}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=100}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=200}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=350}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=470}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=590}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=710}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=830}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=950}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1190}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1

# Intro dialogue poses
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=200}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=350}] run data merge entity @s {Pose:{LeftArm:[174f,0f,20f],RightArm:[184f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=470}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=830}] run data merge entity @s {Pose:{LeftLeg:[280f,0f,0f],RightLeg:[280f,0f,0f],LeftArm:[283f,0f,0f],RightArm:[286f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=950}] run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[20f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=830..1190}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 1 force

# Intro dialogue
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1}] run tellraw @a {"text":"<???> **Initiating greeting routines**","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run fill 9 79 35 7 82 35 glass
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run kill @e[type=armor_stand,tag=intro]
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run fill 6 80 37 6 65 64 air replace barrier
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run fill 10 80 37 10 65 64 air replace barrier
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run fill 6 65 106 6 85 123 air replace barrier
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run fill 10 65 106 10 85 123 air replace barrier
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 1070
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=0}] run tp @a[distance=23..] 8 77 15
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=40}] run tellraw @a {"text":"<???> Hello world!","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=100}] run tellraw @a {"text":"<Boss> I am Boss, the mayor of this city.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=200}] run tellraw @a {"text":"<Boss> It's been a long time since we last saw a human in this city.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=350}] run tellraw @a {"text":"<Boss> My emotion emulators indicate that you must feel rather lost and helpless without your rocket.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=470}] run tellraw @a {"text":"<Boss> But do not fear. I will repair it for you.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=590}] run tellraw @a {"text":"<Boss> The only trouble is ... with this power outage, I am unable to charge your rocket's battery.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=710}] run tellraw @a {"text":"<Boss> I need you to find §dfour backup power sources §6that have been lost throughout this city.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=830}] run tellraw @a {"text":"<Boss> Return them to me in any order, and I will help you return home.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=950}] run tellraw @a {"text":"<Boss> But stay alert. System security is searching for you and will attack on sight.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run tellraw @a {"text":"<Boss> Make good use of this §dholoblock §6to defend yourself and outmaneuver your foes.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1150}] run clone 8 76 8 8 76 8 8 77 8
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone 80 103 13 80 103 13 77 70 52
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone 80 103 13 80 103 13 63 81 -39
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone 80 103 13 80 103 13 -30 76 -42
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone 80 103 13 80 103 13 -62 56 88
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone 80 103 13 80 103 13 -63 78 26
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone -44 61 -54 -44 61 -54 -84 72 -35
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone -61 87 -29 -61 87 -29 -30 76 -33
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone -61 87 -29 -61 87 -29 -2 73 -35
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone -44 61 -54 -44 61 -54 15 74 -48
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run clone -44 61 -54 -44 61 -54 -2 78 57
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run data merge block 116 69 52 {Items:[{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:13b,id:"minecraft:iron_shovel",Count:1b,tag:{display:{Name:"{\"text\":\"Death Sentence\",\"color\":\"light_purple\",\"italic\":\"false\"}",Lore:["§f3 Damage","§f5 Bonus Damage vs Humanoid Bots","","§7Pass judgment upon your foes","§7with this futuristic gavel"]},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:smite",lvl:2}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDLeast:493868,UUIDMost:594526}]}}]}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run data merge block -67 65 88 {Items:[{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:13b,id:"minecraft:egg",Count:1b,tag:{display:{Name:"{\"text\":\"Infinite Eggsplosive\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["§fEggsplodes upon contact","§fwith an enemy","","§7An eggcellent choice","§7for combat. We're not","§7eggsaggerating!"]},HideFlags:7,Enchantments:[{id:"minecraft:sweeping",lvl:5}]}}]}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1070}] run data merge block -17 67 83 {Items:[{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:13b,id:"minecraft:sugar",Count:1b,tag:{display:{Name:"{\"text\":\"Sugar\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["§fAncient Human Artifact","","§7Just like we are fueled by","§7electricity, this mysterious powder","§7is what fueled the humans."]},HideFlags:7,Enchantments:[{id:"minecraft:fortune",lvl:1}]}}]}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1150}] run summon firework_rocket 8 77 8 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;16252672],FadeColors:[I;16711680]}]}}}}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1190}] run tellraw @a {"text":"<Boss> Good luck, human. Entering battery saver mode.","color":"gold"}
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1190}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=0,TALK_TIME=1190}] run scoreboard players set @s TALK_TIME 20000

# Dialogue -- three to go poses
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=0}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=110}] run data merge entity @s {Pose:{LeftArm:[174f,0f,20f],RightArm:[184f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=170}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=230}] run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[20f,0f,0f]}}

# Dialogue -- three to go sounds
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=0}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=70}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=110}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=170}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=230}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1

# Dialogue -- three to go
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=0}] run tellraw @a {"text":"<Boss> **Scanning foreign object**","color":"gold"}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=70}] run tellraw @a {"text":"<Boss> **Scan complete**","color":"gold"}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=110}] run tellraw @a {"text":"<Boss> Well done, this is the first source.","color":"gold"}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=170}] run tellraw @a {"text":"<Boss> Allow me to hold onto it for you.","color":"gold"}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=230}] run tellraw @a {"text":"<Boss> Three sources remain. Good luck. Power down.","color":"gold"}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=230}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=230}] run scoreboard players set @s TALK_TIME 20000

# Dialogue -- two to go poses
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=0}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=1,TALK_TIME=110}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=170}] run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[20f,0f,0f]}}

# Dialogue -- two to go sounds
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=0}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=70}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=110}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=170}] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 0.5 1

# Dialogue -- two to go
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=0}] run tellraw @a {"text":"<Boss> **Scanning foreign object**","color":"gold"}
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=70}] run tellraw @a {"text":"<Boss> **Scan complete**","color":"gold"}
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=110}] run tellraw @a {"text":"<Boss> Two down, two to go.","color":"gold"}
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=170}] run tellraw @a {"text":"<Boss> Well done, <<null pointer exception: string name is not defined>>\n**Program terminated with error code: 501**","color":"gold"}
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=170}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=2,TALK_TIME=170}] run scoreboard players set @s TALK_TIME 20000

# Dialogue -- one to go poses
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=0}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=110}] run data merge entity @s {Pose:{LeftLeg:[280f,0f,0f],RightLeg:[280f,0f,0f],LeftArm:[283f,0f,0f],RightArm:[286f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=170}] run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[20f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=110..170}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 1 force

# Dialogue -- one to go sounds
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=0}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=70}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=110}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=170}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1

# Dialogue -- one to go
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=0}] run tellraw @a {"text":"<Boss> **Scanning foreign object**","color":"gold"}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=70}] run tellraw @a {"text":"<Boss> **Scan complete**","color":"gold"}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=110}] run tellraw @a {"text":"<Boss> Third source registered successfully.","color":"gold"}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=170}] run tellraw @a {"text":"<Boss> Only 0000000001 sources remain. Sleep mode enabled.","color":"gold"}
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=170}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=3,TALK_TIME=170}] run scoreboard players set @s TALK_TIME 20000

# Dialogue -- Boss Battle Poses
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=100}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=400}] run data merge entity @s {Pose:{LeftArm:[174f,0f,20f],RightArm:[184f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=600}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=680}] run data merge entity @s {Pose:{Body:[0f,16f,0f],LeftArm:[257f,0f,0f],RightArm:[10f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=800}] run data merge entity @s {Pose:{LeftArm:[13f,0f,0f],RightArm:[344f,0f,0f],Head:[0f,0f,0f]}}

# Dialogue -- Boss Battle Sounds
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=100}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=250}] run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=400}] run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=600}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=680}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=800}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5 1

# Dialogue -- Boss Battle
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1}] run tellraw @a {"text":"<Boss> Launching surprise emulators. You did it! You found all four power sources!","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run spawnpoint @a 8 84 35
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run tp @a[distance=23..] 8 77 15
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 9 79 35 7 82 35 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill -19 79 9 -19 82 7 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 7 79 -19 9 82 -19 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 35 79 7 35 82 9 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 28 79 27 28 82 27 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 27 79 28 27 82 28 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill -11 79 28 -11 82 28 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill -12 79 27 -12 82 27 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill -12 79 -11 -12 82 -11 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill -11 79 -12 -11 82 -12 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 27 79 -12 27 82 -12 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0}] run fill 28 79 -11 28 82 -11 black_stained_glass
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=0,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 1080
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=100}] run tellraw @a {"text":"<Boss> Well, congratulations. You win.","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=250}] run tellraw @a {"text":"<Boss> You can save and quit now. The game is over.","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=400}] run tellraw @a {"text":"<Boss> All you have to do is press ESC and click 'Disconnect'.","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=600}] run tellraw @a {"text":"<Boss> Why are you still here? Wait ...","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=680}] run tellraw @a {"text":"<Boss> Don't tell me you actually READ the backstory?!","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=800}] run tellraw @a {"text":"<Boss> With your rocket and these power sources, I must deliver this supervirus and free the humans from their suffering.","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=920}] run tellraw @a {"text":"<Boss> And since you were so persistent in your quest ...","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1000}] run tellraw @a {"text":"<Boss> You can be the first to die!","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1079}] run tellraw @a {"text":"<Boss> **Initiating combat routines**","color":"gold"}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run scoreboard players set @s BOSS_ACTIVE 1
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run summon drowned ~ ~ ~ {Silent:1b,Glowing:1b,CustomNameVisible:1b,LeftHanded:1b,PersistenceRequired:1b,Health:200f,CustomName:"{\"text\":\"Boss\",\"color\":\"gold\"}",ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"da124de4-5c96-4948-8bcc-fa0f19666199",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWFmMjNiYjlhNDkxMjVjMmNlOGNhYWJkNzIyNDI0MThiNzcyNGU0OGU4MDE4ZjEyMzIyODc1YjIzN2RjYSJ9fX0="}]}}}}],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:199980,ShowParticles:0b},{Id:12b,Amplifier:1b,Duration:199980,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:60},{Name:generic.movementSpeed,Base:0.3}]}
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run tp @s ~ ~100 ~
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 5 normal
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run bossbar add totality:boss "Boss"
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run bossbar set totality:boss players @a
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run bossbar set totality:boss max 200
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run bossbar set totality:boss color yellow
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=4,TALK_TIME=1080}] run scoreboard players set @s TALK_TIME 20000

# Dialogue -- Ending sounds
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=0}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=40}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=140}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=180}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=240}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=360}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=420}] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 0.5 1

# Dialogue -- Ending
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=0,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 480
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=1}] run tellraw @a {"text":"<Boss> **%ERROR% SEGMENTATION FAULT**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=40}] run tellraw @a {"text":"<Boss> **System integrity failing**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=80}] run tellraw @a {"text":"<Boss> >> cd ..","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=120}] run tellraw @a {"text":"<Boss> >> cd Documents/Cat Pictures","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=140}] run tellraw @a {"text":"<Boss> **Disk defragment failed**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=160}] run tellraw @a {"text":"<Boss> >> run kittenSlideshow.py","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=180}] run tellraw @a {"text":"<Boss> **%ERROR% FILE CORRUPTED**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=220}] run tellraw @a {"text":"<Boss> >> run kittenSlideshow.py","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=240}] run tellraw @a {"text":"<Boss> **%ERROR% FILE CORRUPTED**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=280}] run tellraw @a {"text":"<Boss> **Memory Leak Detected: 0xF00BA8**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=360}] run tellraw @a {"text":"<Boss> Please forgive me, human.","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=420}] run tellraw @a {"text":"<Boss> I have failed to save you ...","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=479}] run tellraw @a {"text":"<Boss> **<<null pointer exception: var life is not defined>>**\n**Program terminated with error code: 42**","color":"gold"}
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.2 50 normal
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run scoreboard players set @s BOSS_TALKING 0
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run scoreboard players set @s ENDING_OPEN 1
#execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run give @p yellow_wool{HideFlags:1,display:{Name:"{\"text\":\"§eYellow Source\"}",Lore:["§fAn enigmatic battery found beneath Sol Corp"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run give @p magenta_wool{HideFlags:1,display:{Name:"{\"text\":\"§dMagenta Source\"}",Lore:["§fAn enigmatic battery found in the cathedral"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run give @p orange_wool{HideFlags:1,display:{Name:"{\"text\":\"§6Orange Source\"}",Lore:["§fAn enigmatic battery found in the Underground"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run give @p lime_wool{HideFlags:1,display:{Name:"{\"text\":\"§aLime Source\"}",Lore:["§fAn enigmatic battery found in an ancient factory"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute if entity @s[scores={TALK_NUM=5,TALK_TIME=480}] run scoreboard players set @s TALK_TIME 20000

# Backstory sound effects (1-3)
execute if entity @s[scores={TALK_NUM=6..8,TALK_TIME=80}] at @a run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=6..8,TALK_TIME=160}] at @a run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1

# Backstory 1
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=2}] run tellraw @a {"text":"The power source whispers to you.","color":"white"}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=1}] run clone 53 224 -3 59 233 3 10 77 4
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 20000
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=80}] run tellraw @a {"text":"<Source> Greetings, human.","color":"red"}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=160}] run tellraw @a {"text":"<Source> Allow me to enlighten you ...","color":"red"}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=240}] run scoreboard players set @a IN_BACKSTORY 1
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=240}] run tp @a -2 39 -19 180 0
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=240}] run spawnpoint @a -2 39 -19
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -1.8 37.2 -33 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[89f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[344f,0f,0f],Head:[341f,0f,0f],LeftLeg:[283f,0f,0f],RightLeg:[280f,0f,0f],RightArm:[254f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -3.05 37.7 -33 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[270f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"rsmalec"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[20f,0f,0f],Head:[29f,0f,0f],LeftLeg:[52f,0f,0f],RightLeg:[68f,0f,0f],LeftArm:[296f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 1 37 -35 {Tags:["bs1"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[22f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"qmagnet"}}],HandItems:[{},{}],CustomName:"{\"text\":\"It's ALIVE!!!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[7f,0f,0f],Head:[319f,0f,0f],LeftLeg:[7f,16f,354f],RightLeg:[16f,322f,0f],LeftArm:[190f,0f,52f],RightArm:[209f,0f,312f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -5 38 -54 {Tags:["bs1"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[344f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Jigarbov"}}],HandItems:[{},{}],CustomName:"{\"text\":\"I can make this light...TURN ON!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftLeg:[360f,16f,354f],RightLeg:[0f,0f,360f],LeftArm:[280f,0f,52f],RightArm:[0f,0f,29f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 0 38 -54 {Tags:["bs1"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[66f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Whoa!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[347f,0f,0f],LeftLeg:[13f,0f,0f],RightArm:[315f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -1 38 -56 {Tags:["bs1"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[19f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"It's magic!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftLeg:[13f,0f,0f],LeftArm:[155f,0f,45f],RightArm:[0f,0f,135f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -10 50 -90 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[284f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Fangride"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],LeftArm:[274f,0f,0f],RightArm:[0f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -10 50 -94 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[284f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Stetofire"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],LeftArm:[274f,0f,0f],RightArm:[0f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -9 50 -99 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[284f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Fellonius"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],LeftArm:[274f,0f,0f],RightArm:[0f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -9 50 -103 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[284f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"nerdboy64"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],LeftArm:[274f,0f,0f],RightArm:[0f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 6 50 -90 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[79f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"abrightmoore"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],RightArm:[270f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 6 50 -94 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[79f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"qwertyuiopthepie"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],RightArm:[270f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 5 50 -99 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[79f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"RenderXR"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],RightArm:[270f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 5 50 -103 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[79f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"bongotezz"}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{RightLeg:[0f,0f,360f],RightArm:[270f,0f,7f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -5 48 -93 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[87f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -6 48 -95 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[87f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -6 48 -100 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[87f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand -4 48 -103 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[87f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 0 48 -103 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[271f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 2 48 -100 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[271f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 2 48 -95 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[271f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run summon armor_stand 1 48 -93 {Tags:["bs1","hidename"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[271f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],Head:[26f,0f,0f],LeftArm:[357f,0f,0f],RightArm:[16f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=6,TALK_TIME=270}] run scoreboard players set @s TALK_TIME 20000

# Backstory 2
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=2}] run tellraw @a {"text":"The power source whispers to you.","color":"white"}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=1}] run clone 46 224 -3 52 233 3 10 77 4
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 20000
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=80}] run tellraw @a {"text":"<Source> Greetings, human.","color":"red"}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=160}] run tellraw @a {"text":"<Source> Allow me to enlighten you ...","color":"red"}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=240}] run scoreboard objectives add B_DEATH minecraft.custom:minecraft.deaths
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run scoreboard players set @a B_DEATH 0
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=240}] run scoreboard players set @a IN_BACKSTORY 1
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=240}] run tp @a 17 39 -19 180 0
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=240}] run spawnpoint @a 17 39 -19
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon armor_stand 17 39 -31 {Tags:["bs2"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Estimated Time Remaining: 5 minutes. No, 2 hours. Wait, 30 seconds!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],LeftLeg:[296f,0f,0f],RightLeg:[296f,0f,0f],RightArm:[0f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 17 40 -87 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 44 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 44 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 44 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 44 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 49 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 49 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 49 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 49 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 54 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 54 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 54 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 21 54 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 44 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 44 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 44 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 44 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 49 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 49 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 49 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 49 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 54 -73 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 54 -65 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 54 -57 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run summon drowned 13 54 -49 {Silent:1b,NoAI:1b,Invulnerable:1b,CustomName:"{\"text\":\"Bad Memories\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:trident",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[scores={TALK_NUM=7,TALK_TIME=270}] run scoreboard players set @s TALK_TIME 20000

# Backstory 3
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=2}] run tellraw @a {"text":"The power source whispers to you.","color":"white"}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=1}] run clone 39 224 -3 45 233 3 10 77 4
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 20000
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=80}] run tellraw @a {"text":"<Source> Greetings, human.","color":"red"}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=160}] run tellraw @a {"text":"<Source> Allow me to enlighten you ...","color":"red"}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=240}] run scoreboard players set @a IN_BACKSTORY 1
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=240}] run tp @a 8 8 -137 180 0
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=240}] run spawnpoint @a 8 8 -137
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=270}] run summon armor_stand 8 11 -158 {Tags:["bs3"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"You are a bug in the cosmic code and must be deleted.\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[4f,0f,0f],LeftArm:[290f,0f,0f],RightArm:[251f,0f,357f]}}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=270}] run summon armor_stand 10 8 -149 {Tags:["bs3"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[179f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"qmagnet"}}],HandItems:[{},{}],CustomName:"{\"text\":\"Gentlemen, the singularity is upon us! To arms!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftArm:[187f,0f,126f],RightArm:[286f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=270}] run summon armor_stand 7 8 -151 {Tags:["bs3"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[179f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Jigarbov"}}],HandItems:[{},{}],CustomName:"{\"text\":\"You'll never defeat us, toasters!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftArm:[331f,0f,0f],RightArm:[277f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=270}] run summon armor_stand 3 8 -149 {Tags:["bs3"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[179f],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"diamond_leggings",Count:1b},{id:"diamond_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"rsmalec"}}],HandItems:[{},{}],CustomName:"{\"text\":\"I knew I shouldn't have taught them how to play chess!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftArm:[187f,0f,42f],RightArm:[190f,0f,312f]}}
execute if entity @s[scores={TALK_NUM=8,TALK_TIME=270}] run scoreboard players set @s TALK_TIME 20000

# Backstory sound effects (4)
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=40}] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=140}] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=240}] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=340}] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1

# Backstory 4
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=1}] run clone 32 224 -3 38 233 3 10 77 4
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 20000
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=40}] run tellraw @a {"text":"<Source> Preparations to DELETE the humans are 99.99% complete.","color":"red"}
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=140}] run tellraw @a {"text":"<Source> Only one obstacle keeps us from fulfilling our holy assignment.","color":"red"}
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=240}] run tellraw @a {"text":"<Source> Without a functioning spaceship, we are unable to deliver the virus.","color":"red"}
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=340}] run tellraw @a {"text":"<Source> And so we wait() patiently for a rocket to reverse engineer ...","color":"red"}
execute if entity @s[scores={TALK_NUM=9,TALK_TIME=340}] run scoreboard players set @s TALK_TIME 20000

# Ending...ending!
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=2}] run tellraw @a {"text":"Thus ends your eventful trip to Earth.","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1}] run title @a times 10 400 10
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 881
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=121}] run tellraw @a {"text":"With your rocket repaired, you may finally return to Star Command.","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=221}] run tellraw @a {"text":"But although the day is won, the battle has only just begun.","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=321}] run tellraw @a {"text":"And so you set course for the lunar colonies to warn everyone about this ancient threat that lurks in the moon's shadow ...","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=381}] run playsound minecraft:entity.minecart.inside master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=421}] run particle minecraft:smoke 13 81 7 0 0 0 0.1 20 normal
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=461}] run tellraw @a {"text":"5","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=461}] run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=421}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=511}] run tellraw @a {"text":"4","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=491}] run playsound minecraft:entity.minecart.inside master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=511}] run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=471}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=471}] run particle minecraft:smoke 13 81 7 0 0 0 0.1 20 normal
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=561}] run tellraw @a {"text":"3","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=561}] run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=561}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=561}] run particle minecraft:smoke 13 81 7 0 0 0 0.1 20 normal
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=611}] run tellraw @a {"text":"2","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=611}] run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=641}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=641}] run particle minecraft:smoke 13 81 7 0 0 0 0.1 20 normal
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=651}] run tellraw @a {"text":"1","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=651}] run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=621}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=621}] run particle minecraft:smoke 13 81 7 0 0 0 0.1 20 normal
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=701}] run tellraw @a {"text":"Liftoff!","color":"aqua"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=701}] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=701..751}] run tp @s ~ ~-0.5 ~
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881}] run tp @s 7 76.3 9
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881}] run fill 10 77 6 16 86 8 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881}] run scoreboard players set @s ENDING_OPEN 2
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881}] run gamemode spectator @a
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881}] run tp @a 7 197 -73 0 -65
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=881,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 1701
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=701}] run summon firework_rocket 7 207 -63 {NoGravity:1b,Glowing:1b,LifeTime:99999}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=941}] run title @a title {"text":"T O T A L I T Y","color":"light_purple","bold":"true"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=941}] run title @a subtitle {"text":"","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1151}] run title @a title {"text":"Map by: Cold Fusion","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1191}] run title @a subtitle {"text":"coldfusionmaps.com","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1291}] run title @a title {"text":"Special thanks to:","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1291}] run title @a subtitle {"text":"","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1311}] run title @a subtitle {"text":"Brass Watch Games - Apartment buildings","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1391}] run title @a subtitle {"text":"Fangride - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1441}] run title @a subtitle {"text":"Stetofire - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1491}] run title @a subtitle {"text":"Qmagnet - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1541}] run title @a subtitle {"text":"Jigarbov - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1591}] run title @a subtitle {"text":"Feylina - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1641}] run title @a subtitle {"text":"abrightmoore - Playtesting","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run title @a title {"text":"THE END","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run title @a subtitle {"text":"Thanks for playing!","color":"light_purple"}
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run advancement grant @a only t:completion/end
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701,SPEEDRUN=0}] run scoreboard objectives setdisplay sidebar C_DEATHS
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701,SPEEDRUN=1}] run scoreboard objectives add TIME_STOP dummy "Final Time (ticks)"
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701,SPEEDRUN=1}] run scoreboard players operation @a TIME_STOP = @a C_TIME
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701,SPEEDRUN=1}] run scoreboard objectives setdisplay sidebar TIME_STOP
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run execute as @a[scores={C_FIRE_USED=0,C_DOG_USED=0,C_PICK_USED=0,C_SWORD_USED=0,C_SHIELD_USED=0,C_AXE_USED=0,C_WATER_USED=0,C_TRIDENT_USED=0,C_BOW_USED=0,C_SHOVEL_USED=0,C_SHEARS_USED=0,C_HELMET_USED=0,C_CHEST_USED=0,C_LEGGINGS_USED=0,C_BOOTS_USED=0}] run advancement grant @s only t:challenges/holoninja
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run execute as @a[scores={C_DEATHS=0}] run advancement grant @s only t:challenges/ironman
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run execute as @a[scores={C_TIME=..72000}] run advancement grant @s only t:challenges/speedrun
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701,C_ARTIFACT=13}] run execute as @a[scores={C_DEATHS=0,C_TIME=..72000,C_FIRE_GET=1,C_HELMET_GET=1,C_CHEST_GET=1,C_LEGGINGS_GET=1,C_BOOTS_GET=1,C_DOG_GET=1,C_PICK_GET=1,C_SWORD_GET=1,C_SHIELD_GET=1,C_AXE_GET=1,C_WATER_GET=1,C_TRIDENT_GET=1,C_BOW_GET=1,C_SHOVEL_GET=1,C_SHEARS_GET=1,C_GLASS_GET=1,C_DOG_USED=0,C_PICK_USED=0,C_SWORD_USED=0,C_SHIELD_USED=0,C_AXE_USED=0,C_WATER_USED=0,C_TRIDENT_USED=0,C_BOW_USED=0,C_SHOVEL_USED=0,C_SHEARS_USED=0,C_HELMET_USED=0,C_CHEST_USED=0,C_LEGGINGS_USED=0,C_BOOTS_USED=0,C_FIRE_USED=0}] run advancement grant @s only t:challenges/perfect
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 9 79 35 7 82 35 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill -19 79 9 -19 82 7 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 7 79 -19 9 82 -19 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 35 79 7 35 82 9 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 28 79 27 28 82 27 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 27 79 28 27 82 28 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill -11 79 28 -11 82 28 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill -12 79 27 -12 82 27 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill -12 79 -11 -12 82 -11 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill -11 79 -12 -11 82 -12 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 27 79 -12 27 82 -12 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1701}] run fill 28 79 -11 28 82 -11 air
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1801}] run tp @a 8 203 84 180 0
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1801}] run gamemode adventure @a
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1801}] run scoreboard players set @s ENDING_OPEN 3
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1801}] run scoreboard players set @s TALK_TIME 20000

# Map intro
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=1,SPEEDRUN=1}] run scoreboard players set @s TALK_TIME 501
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=51}] run tellraw @a {"text":"Earth - a planet with a past that is shrouded in mystery.","color":"aqua"}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=51}] at @a run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=201}] run tellraw @a {"text":"Your mission is simple: land on the planet, and report anything unusual to Star Command.","color":"aqua"}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=201}] at @a run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=351}] run tellraw @a {"text":"But due to a navigation system malfunction, your landing could have been a little smoother ...","color":"aqua"}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=351}] at @a run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run tp @a 8 80 128 0 0
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run scoreboard objectives remove C_TIME
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run scoreboard objectives add C_TIME minecraft.custom:minecraft.play_one_minute "Time (ticks)"
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501,SPEEDRUN=1}] run scoreboard objectives setdisplay sidebar C_TIME
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] at @p run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1 1
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run particle minecraft:explosion 8 81 130 1 1 1 0.05 10 force
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run scoreboard players set @s INTRO_TRIGGERED 2
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 6 63 99 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Panic! Panic!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftLeg:[0f,0f,347f],RightLeg:[0f,0f,13f],LeftArm:[190f,0f,26f],RightArm:[190f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 8 63 91 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Something crashed into the power plant! Systems OFFLINE!!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftLeg:[0f,0f,347f],RightLeg:[0f,0f,13f],LeftArm:[190f,0f,26f],RightArm:[190f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 10 63 78 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Aaaaah!\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{LeftLeg:[0f,0f,347f],RightLeg:[0f,0f,13f],LeftArm:[190f,0f,26f],RightArm:[190f,0f,335f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 8 63 74 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"I hope this means school is cancelled today...\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[0f,7f,0f],Head:[0f,0f,4f],LeftLeg:[347f,0f,0f],RightLeg:[4f,0f,0f],LeftArm:[0f,0f,312f],RightArm:[0f,0f,36f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 10 63 65 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e8297346-5aca-4ae8-b2a3-e341b6d0921f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzNWFmYTU4NjMxNjA5NzkxZmZlMjVmM2E4NzlkZmJmZmVhMTE1MWY4N2JmZjYyYzU0MjNlZDYxMzZlZTAifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"The mayor is expecting you, human.\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[0f,7f,0f],LeftLeg:[13f,0f,0f],LeftArm:[274f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run summon armor_stand 6 76 42 {Tags:["intro"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"e8297346-5aca-4ae8-b2a3-e341b6d0921f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzNWFmYTU4NjMxNjA5NzkxZmZlMjVmM2E4NzlkZmJmZmVhMTE1MWY4N2JmZjYyYzU0MjNlZDYxMzZlZTAifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Right this way.\",\"color\":\"aqua\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Body:[0f,347f,0f],LeftLeg:[13f,0f,0f],RightArm:[277f,0f,0f]}}
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=501}] run scoreboard players set @s TALK_TIME -51
execute if entity @s[scores={TALK_TIME=-51}] run scoreboard players set @s TALK_NUM 0

# Backstory scare sound effects
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=1}] at @a run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=81}] at @a run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=121}] at @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5 1

# Backstory scare
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=1}] run tellraw @a {"text":"<Source> To minimize suffering, the human race would need to be ...","color":"red"}
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=81}] run tellraw @a {"text":"<Source> DELETED.","color":"red"}
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=111..121}] run summon lightning_bolt 17 40 -87
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=121}] run execute as @e[name="Bad Memories"] at @s run data merge entity @s {NoAI:0}
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=121}] run worldborder warning distance 800000000
execute if entity @s[scores={TALK_NUM=14,TALK_TIME=121}] run scoreboard players set @s TALK_TIME 20000

# Virus timer
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=1}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5 1
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151}] run kill @e[type=armor_stand, tag=bs3]
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151,WARPLOC=0}] run tp @a 9 62 8
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151,WARPLOC=1}] run tp @a -83 112 52
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151,WARPLOC=1}] run tp @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] -232 42 52
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151,WARPLOC=2}] run tp @a 8 35 122
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151,WARPLOC=3}] run tp @a 90 14 -89
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151}] run scoreboard players set @a IN_BACKSTORY 0
execute if entity @s[scores={TALK_NUM=15,TALK_TIME=151}] run scoreboard players set @s TALK_TIME 20000

# Give players blindness while the intro & ending is playing...
execute if entity @s[scores={TALK_NUM=12,TALK_TIME=1..840}] run effect give @a minecraft:blindness 6 0 true
execute if entity @s[scores={TALK_NUM=13,TALK_TIME=1..20000}] run effect give @a minecraft:blindness 6 0 true

# Change to neutral face when not talking
execute if entity @s[scores={BOSS_TALKING=0}] run data merge entity @s {ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"da124de4-5c96-4948-8bcc-fa0f19666199",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWFmMjNiYjlhNDkxMjVjMmNlOGNhYWJkNzIyNDI0MThiNzcyNGU0OGU4MDE4ZjEyMzIyODc1YjIzN2RjYSJ9fX0="}]}}}}]}

# Increase talk time
scoreboard players add @s[scores={TALK_TIME=..20000}] TALK_TIME 1