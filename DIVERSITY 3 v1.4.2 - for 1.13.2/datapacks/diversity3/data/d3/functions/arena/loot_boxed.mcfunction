####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# JANUARY 17 2019 / JANUARY 19 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

data merge entity @e[tag=ArenaTrader3,limit=1] {Offers:{Recipes:[{buy:{id:"minecraft:gold_ingot",Count:2b},buyB:{id:"minecraft:gold_nugget",Count:49b},sell:{id:"minecraft:yellow_shulker_box",Count:1b,tag:{display:{Name:"{\"text\":\"Loot Shulker\",\"italic\":\"false\",\"color\":\"gold\"}",Lore:["Purchase this container for a","chance at some special mystery","items that could enhance your","experience in the Arena!"," ","But it's totally your choice."]}}},uses:0,maxUses:1,rewardExp:0b}]}}

summon area_effect_cloud 8 47 1873 {Tags:["LBCreeperHeadAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBStickAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBSlimeBlockAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBPumpkinAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBPaintingAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBGhastTearAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBPaperAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBDiamondAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBClayAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBBottleAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBBannerAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBPackedIceAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBSandAEC","ArenaLootBoxAEC"],Duration:20}
summon area_effect_cloud 8 47 1873 {Tags:["LBPressurePlateAEC","ArenaLootBoxAEC"],Duration:20}


execute if block 8 7 78 gold_block run kill @e[tag=ArenaLootBoxAEC,sort=random,limit=11]

setblock 8 47 1873 air destroy
particle cloud 8 47.5 1873 0.3 0.3 0.3 0 50
#playsound entity.ghast.death master @a 8 47.5 1873 1 1 0
playsound entity.evoker.cast_spell master @a 8 47.5 1873 0.5 0.5 0
playsound block.conduit.attack.target master @a 8 47.5 1873 1 1.5 0
playsound entity.ender_eye.death ambient @a 8 47.5 1873 1 0.7 0


# ONLY FIRST TIME
execute if block 8 7 78 clay run kill @e[tag=ArenaLootBoxAEC,sort=random,limit=12]
execute if block 8 7 78 clay run summon area_effect_cloud 8 47 1873 {Tags:["LBLeviBombAEC","ArenaLootBoxAEC"],Duration:20}
execute if block 8 7 78 clay run setblock 8 7 78 gold_block


# LEVI BOMB
execute if entity @e[tag=LBLeviBombAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:snowball",Count:1b,tag:{HideFlags:3,display:{Name:"{\"text\":\"Levitation Bomb\",\"italic\":\"false\",\"color\":\"yellow\",\"bold\":\"true\"}",Lore:["*** ONE-TIME USE ***","*** DOES NOT WORK ON BOSSES ***"," ","Toss this little thing when you're","overwhelmed by attackers and all","present Arena™ enemies will rise","up, giving you an unfair advantage"]},Enchantments:[{id:"minecraft:lure",lvl:2s}]}},Tags:["ArenaLootBoxItem"]}

# CREEPER HEAD
execute if entity @e[tag=LBCreeperHeadAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:creeper_head",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Cosmetic Mask\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Present yourself as one of those","pesky Arena™ foes and see if","your friends can even pick you","out of the battle!"]}}},Tags:["ArenaLootBoxItem"]}

# STICK
execute if entity @e[tag=LBStickAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:stick",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Historical Replica\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["You'll be the talk of the town","with this commemorative immitation","weapon from the Arena™ battles","of long ago!"]}}},Tags:["ArenaLootBoxItem"]}

# SLIME BLOCK
execute if entity @e[tag=LBSlimeBlockAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:slime_block",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Slime Action Figure\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Decorate your shelf with this","special 20th Anniversary Edition","scale model the fan favourite","foe, the dreaded Evil Slime!"]}}},Tags:["ArenaLootBoxItem"]}

# PUMPKIN
execute if entity @e[tag=LBPumpkinAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"GolemVision™ Helmet\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Watch the entire battle in style!","This wearable utility mask simulates","the actual vision of a real-life Golem!"]}}},Tags:["ArenaLootBoxItem"]}

# PAINTING
execute if entity @e[tag=LBPaintingAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:painting",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Mystery Art\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Decorate your bedroom with this","magical changing portrait.","Each time you hang this painting,","the result is a new surprise!"]}}},Tags:["ArenaLootBoxItem"]}

# GHAST TEAR
execute if entity @e[tag=LBGhastTearAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:ghast_tear",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Unhappy Gem\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Your friends will be jealous of this","Limited Edition replica artifact of the","flying fire-spewing screech monster","of the mythical Lava Dimension!"]}}},Tags:["ArenaLootBoxItem"]}

# PAPER
execute if entity @e[tag=LBPaperAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:paper",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"AdamDJM's Autograph\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Dearest Buyer,","You're the real hero!"," ","Your friend,","- AdamDJM"]}}},Tags:["ArenaLootBoxItem"]}

# DIAMOND
execute if entity @e[tag=LBDiamondAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:diamond",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Old World Money\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["This ancient tricket was the","accepted currency long ago","in the Trade Shop during the","Arena™ Battles of Diversity 2"]}}},Tags:["ArenaLootBoxItem"]}

# CLAY
execute if entity @e[tag=LBClayAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:clay_ball",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Modeling Putty\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Now you can create your own miniature","Arena baddies! You can even paint 'em","and compare with your friends who's","got the coolest looking statue!"]}}},Tags:["ArenaLootBoxItem"]}

# BOTTLE
execute if entity @e[tag=LBBottleAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:glass_bottle",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"White's Breath\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["This bottle contains the actual","breath of Mr. White, the first","Arena™ champion, after the famous","'Test of the Resource Packs' battle."," ","Just don't open it and let it escape!"]}}},Tags:["ArenaLootBoxItem"]}

# BANNER
execute if entity @e[tag=LBBannerAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:yellow_banner",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Official Arena™ Cloth\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Support your local Arena™ with","this portable authentic bath towel","and dry off with these colours to","show your family you're a true fan!"]}}},Tags:["ArenaLootBoxItem"]}

# PACKED ICE
execute if entity @e[tag=LBPackedIceAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:packed_ice",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Icepak\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Relax after a hard day of battle","with this pain relief ice pack","that decreases swelling of muscles","and joints and soothes pain"," ","*** Keep frozen ***"]}}},Tags:["ArenaLootBoxItem"]}

# SAND
execute if entity @e[tag=LBSandAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:sand",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Authentic Arena Sand\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["Hold on to a piece of history","with this sample of the actual","sand used in the very first","Diversity Arena™ floor"]}}},Tags:["ArenaLootBoxItem"]}

# GOLD PRESSURE PLATE
execute if entity @e[tag=LBPressurePlateAEC] run summon item 8 47.5 1873 {Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b,tag:{HideFlags:2,display:{Name:"{\"text\":\"Golden Ticket\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["A special certificate inviting you","on the first day of February at","ten o'clock sharp to take a tour","at a famous chocolate factory"]}}},Tags:["ArenaLootBoxItem"]}

#Purchase this container for a

tag @e[tag=ArenaLootBoxItem,sort=random,limit=1] add ArenaLootBoxItem1
tag @e[tag=ArenaLootBoxItem,sort=random,limit=1,tag=!ArenaLootBoxItem1] add ArenaLootBoxItem2
tag @e[tag=ArenaLootBoxItem,sort=random,limit=1,tag=!ArenaLootBoxItem1,tag=!ArenaLootBoxItem2] add ArenaLootBoxItem3

data merge entity @e[tag=ArenaLootBoxItem1,limit=1] {NoGravity:0b,Motion:[0.05d,0.2d,0.05d]}
data merge entity @e[tag=ArenaLootBoxItem2,limit=1] {NoGravity:0b,Motion:[0.1d,0.2d,0.1d]}
data merge entity @e[tag=ArenaLootBoxItem3,limit=1] {NoGravity:0b,Motion:[0.05d,0.2d,-0.05d]}




#Motion:[0.0d,0.2d,0.0d],





scoreboard objectives remove LootBox
tag @a remove LootBoxed
