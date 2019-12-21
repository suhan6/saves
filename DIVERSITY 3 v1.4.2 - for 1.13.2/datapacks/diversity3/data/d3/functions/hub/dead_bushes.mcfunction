####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# JUNE 16 2018 / MAY 9 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

#scoreboard objectives setdisplay sidebar BushLife
#scoreboard objectives setdisplay sidebar AquaBush
#scoreboard objectives setdisplay sidebar GoldBush
#scoreboard objectives setdisplay sidebar YellowBush
#scoreboard objectives setdisplay sidebar GreenBush
#scoreboard objectives setdisplay sidebar LightPurpleBush
#scoreboard objectives setdisplay sidebar DarkAquaBush
#scoreboard objectives setdisplay sidebar DarkPurpleBush
#scoreboard objectives setdisplay sidebar BlueBush
#scoreboard objectives setdisplay sidebar DarkRedBush
#scoreboard objectives setdisplay sidebar RedBush
#scoreboard objectives setdisplay sidebar DarkGrayBush
#scoreboard objectives setdisplay sidebar DarkGreenBush
#scoreboard objectives setdisplay sidebar TallyBushes
#scoreboard objectives setdisplay sidebar BushTotal

fill 1 3 46 12 3 46 flower_pot replace air

execute if entity @e[type=item,nbt={Item:{id:"minecraft:dead_bush"}}] run scoreboard objectives add BushLife dummy
scoreboard players add @e[type=item,nbt={Item:{id:"minecraft:dead_bush"}}] BushLife 1
execute if entity @e[scores={BushLife=500..}] run kill @e[scores={BushLife=500..}]
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:dead_bush"}}] run scoreboard objectives remove BushLife

advancement grant @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{ShecretBush:1b}}]}] only d3:folder_c/secret_branch_item


# AQUA
execute unless block 30 126 1018 green_shulker_box run setblock 30 126 1018 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 12 3 46 flower_pot run execute if block 30 126 1018 green_shulker_box run scoreboard objectives add AquaBush dummy
execute if block 12 3 46 potted_dead_bush run scoreboard objectives remove AquaBush
scoreboard players add @e[tag=MainHubAEC] AquaBush 0
execute if block 30 126 1018 green_shulker_box run scoreboard players add @e[scores={AquaBush=0..100}] AquaBush 1
execute if block 30 126 1018 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{AquaBush:1b}}]} run scoreboard objectives remove AquaBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{AquaBush:1b}}}] run scoreboard objectives remove AquaBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{AquaBush:1b}}]}] run scoreboard objectives remove AquaBush
execute if entity @e[scores={AquaBush=100..}] run replaceitem block 30 126 1018 container.13 dead_bush{display:{Name:"{\"text\":\"The Master Bush\",\"italic\":\"false\",\"color\":\"aqua\"}",Lore:["This legendary Bush of Evil's Bane was","once wielded by a Hero of Time and used","to defeat a giant evil warthog to free","a captive princess with a triangle tattoo."]},Enchantments:[{id:"minecraft:lure",lvl:10}],AquaBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={AquaBush=100..}] run particle enchant 30 126.8 1018 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={AquaBush=100..}] run playsound entity.zombie_villager.converted master @a 30 126 1018 0.5 1 0

# GOLD
execute unless block -19 118 1092 green_shulker_box run setblock -19 118 1092 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 11 3 46 flower_pot run scoreboard objectives add GoldBush dummy
execute if block 11 3 46 potted_dead_bush run scoreboard objectives remove GoldBush
scoreboard players add @e[tag=MainHubAEC] GoldBush 0
execute if block -19 118 1092 green_shulker_box run scoreboard players add @e[scores={GoldBush=0..100}] GoldBush 1
execute if block -19 118 1092 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{GoldBush:1b}}]} run scoreboard objectives remove GoldBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{GoldBush:1b}}}] run scoreboard objectives remove GoldBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{GoldBush:1b}}]}] run scoreboard objectives remove GoldBush
execute if entity @e[scores={GoldBush=100..}] run replaceitem block -19 118 1092 container.13 dead_bush{display:{Name:"{\"text\":\"Bush of Gryffindead\",\"italic\":\"false\",\"color\":\"gold\"}",Lore:["This magical Bush was once given to a","a British wizard named Scarface by a","talking hat and used in a highschool war","to chop a snake's head off in slow motion."]},Enchantments:[{id:"minecraft:lure",lvl:10}],GoldBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={GoldBush=100..}] run particle enchant -19 118.8 1092 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={GoldBush=100..}] run playsound entity.zombie_villager.converted master @a -19 118 1092 0.5 1 0

# YELLOW
execute unless block -79 80 1016 green_shulker_box run setblock -79 80 1016 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 10 3 46 flower_pot run execute if block -79 80 1016 green_shulker_box run scoreboard objectives add YellowBush dummy
execute if block 10 3 46 potted_dead_bush run scoreboard objectives remove YellowBush
scoreboard players add @e[tag=MainHubAEC] YellowBush 0
execute if block -79 80 1016 green_shulker_box run scoreboard players add @e[scores={YellowBush=0..100}] YellowBush 1
execute if block -79 80 1016 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{YellowBush:1b}}]} run scoreboard objectives remove YellowBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{YellowBush:1b}}}] run scoreboard objectives remove YellowBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{YellowBush:1b}}]}] run scoreboard objectives remove YellowBush
execute if entity @e[scores={YellowBush=100..}] run replaceitem block -79 80 1016 container.13 dead_bush{display:{Name:"{\"text\":\"The Infinity Bush\",\"italic\":\"false\",\"color\":\"yellow\"}",Lore:["At full power, this fashionable thorned","mitten made the final blow in a $2 billion","war, resulting in the tragic elimination","of half the Dead Bushes in the universe."]},Enchantments:[{id:"minecraft:lure",lvl:10}],YellowBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={YellowBush=100..}] run particle enchant -79 80.8 1016 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={YellowBush=100..}] run playsound entity.zombie_villager.converted master @a -79 80 1016 0.5 1 0

# GREEN
execute unless block -84 68 991 green_shulker_box run setblock -84 68 991 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 9 3 46 flower_pot run execute if block -84 68 991 green_shulker_box run scoreboard objectives add GreenBush dummy
execute if block 9 3 46 potted_dead_bush run scoreboard objectives remove GreenBush
scoreboard players add @e[tag=MainHubAEC] GreenBush 0
execute if block -84 68 991 green_shulker_box run scoreboard players add @e[scores={GreenBush=0..100}] GreenBush 1
execute if block -84 68 991 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{GreenBush:1b}}]} run scoreboard objectives remove GreenBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{GreenBush:1b}}}] run scoreboard objectives remove GreenBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{GreenBush:1b}}]}] run scoreboard objectives remove GreenBush
execute if entity @e[scores={GreenBush=100..}] run replaceitem block -84 68 991 container.13 dead_bush{display:{Name:"{\"text\":\"Luke's Lightsabush\",\"italic\":\"false\",\"color\":\"green\"}",Lore:["This Bush of illumination was once wielded","by a desert farmboy to spar against his","telekinetic cyborg dad over the unfair","expansion of his dad's boss's organization."]},Enchantments:[{id:"minecraft:lure",lvl:10}],GreenBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={GreenBush=100..}] run particle enchant -84 68.8 991 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={GreenBush=100..}] run playsound entity.zombie_villager.converted master @a -84 68 991 0.5 1 0

# DARK LIGHT PURPLE
execute unless block -35 67 901 green_shulker_box run setblock -35 67 901 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 8 3 46 flower_pot run execute if block -35 67 901 green_shulker_box run scoreboard objectives add LightPurpleBush dummy
execute if block 8 3 46 potted_dead_bush run scoreboard objectives remove LightPurpleBush
scoreboard players add @e[tag=MainHubAEC] LightPurpleBush 0
execute if block -35 67 901 green_shulker_box run scoreboard players add @e[scores={LightPurpleBush=0..100}] LightPurpleBush 1
execute if block -35 67 901 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{LightPurpleBush:1b}}]} run scoreboard objectives remove LightPurpleBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{LightPurpleBush:1b}}}] run scoreboard objectives remove LightPurpleBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{LightPurpleBush:1b}}]}] run scoreboard objectives remove LightPurpleBush
execute if entity @e[scores={LightPurpleBush=100..}] run replaceitem block -35 67 901 container.13 dead_bush{display:{Name:"{\"text\":\"Bushille\",\"italic\":\"false\",\"color\":\"light_purple\"}",Lore:["This wire-wrapped Bush was created by the","leader of a post-apocalyptic community in","honour of his deceased wife, to defeat any","who would bring harm upon him or his people."]},Enchantments:[{id:"minecraft:lure",lvl:10}],LightPurpleBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={LightPurpleBush=100..}] run particle enchant -35 67.8 901 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={LightPurpleBush=100..}] run playsound entity.zombie_villager.converted master @a -35 67 901 0.5 1 0

# DARK AQUA
execute unless block 18 61 894 green_shulker_box run setblock 18 61 894 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 7 3 46 flower_pot run execute if block 18 61 894 green_shulker_box run scoreboard objectives add DarkAquaBush dummy
execute if block 7 3 46 potted_dead_bush run scoreboard objectives remove DarkAquaBush
scoreboard players add @e[tag=MainHubAEC] DarkAquaBush 0
execute if block 18 61 894 green_shulker_box run scoreboard players add @e[scores={DarkAquaBush=0..100}] DarkAquaBush 1
execute if block 18 61 894 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{DarkAquaBush:1b}}]} run scoreboard objectives remove DarkAquaBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{DarkAquaBush:1b}}}] run scoreboard objectives remove DarkAquaBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{DarkAquaBush:1b}}]}] run scoreboard objectives remove DarkAquaBush
execute if entity @e[scores={DarkAquaBush=100..}] run replaceitem block 18 61 894 container.13 dead_bush{display:{Name:"{\"text\":\"Excalibush\",\"italic\":\"false\",\"color\":\"dark_aqua\"}",Lore:["This legendary Bush was given to a guy by an","old lady from some water. Then in 1963, the","guy had a cartoon made, where he told everyone","he grabbed it from a rock to become some king."]},Enchantments:[{id:"minecraft:lure",lvl:10}],DarkAquaBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={DarkAquaBush=100..}] run particle enchant 18 61.8 894 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={DarkAquaBush=100..}] run playsound entity.zombie_villager.converted master @a 18 61 894 0.5 1 0

# DARK PURPLE
execute unless block 129 49 840 green_shulker_box run setblock 129 49 840 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 6 3 46 flower_pot run execute if block 129 49 840 green_shulker_box run scoreboard objectives add DarkPurpleBush dummy
execute if block 6 3 46 potted_dead_bush run scoreboard objectives remove DarkPurpleBush
scoreboard players add @e[tag=MainHubAEC] DarkPurpleBush 0
execute if block 129 49 840 green_shulker_box run scoreboard players add @e[scores={DarkPurpleBush=0..100}] DarkPurpleBush 1
execute if block 129 49 840 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{DarkPurpleBush:1b}}]} run scoreboard objectives remove DarkPurpleBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{DarkPurpleBush:1b}}}] run scoreboard objectives remove DarkPurpleBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{DarkPurpleBush:1b}}]}] run scoreboard objectives remove DarkPurpleBush
execute if entity @e[scores={DarkPurpleBush=100..}] run replaceitem block 129 49 840 container.13 dead_bush{display:{Name:"{\"text\":\"Bushnir\",\"italic\":\"false\",\"color\":\"dark_purple\"}",Lore:["Once wielded by a god, when thrown, this","mystical Bush would boomerang back, and","could even attach cool posters to his","bedroom walls or fix broken chairs."]},Enchantments:[{id:"minecraft:lure",lvl:10}],DarkPurpleBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={DarkPurpleBush=100..}] run particle enchant 129 49.8 840 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={DarkPurpleBush=100..}] run playsound entity.zombie_villager.converted master @a 129 49 840 0.5 1 0

# BLUE
execute unless block 75 112 938 green_shulker_box run setblock 75 112 938 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 5 3 46 flower_pot run execute if block 75 112 938 green_shulker_box run scoreboard objectives add BlueBush dummy
execute if block 5 3 46 potted_dead_bush run scoreboard objectives remove BlueBush
scoreboard players add @e[tag=MainHubAEC] BlueBush 0
execute if block 75 112 938 green_shulker_box run scoreboard players add @e[scores={BlueBush=0..100}] BlueBush 1
execute if block 75 112 938 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{BlueBush:1b}}]} run scoreboard objectives remove BlueBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{BlueBush:1b}}}] run scoreboard objectives remove BlueBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{BlueBush:1b}}]}] run scoreboard objectives remove BlueBush
execute if entity @e[scores={BlueBush=100..}] run replaceitem block 75 112 938 container.13 dead_bush{display:{Name:"{\"text\":\"Mega Bushter\",\"italic\":\"false\",\"color\":\"blue\"}",Lore:["Created by Santa, this mechanical arm Bush","was the main weapon used by the Jamaican","robot, Mega Mon, to battle his evil robotic","family members for having ridiculous names."]},Enchantments:[{id:"minecraft:lure",lvl:10}],BlueBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={BlueBush=100..}] run particle enchant 75 112.8 938 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={BlueBush=100..}] run playsound entity.zombie_villager.converted master @a 75 112 938 0.5 1 0

# DARK RED
execute unless block 104 94 965 green_shulker_box run setblock 104 94 965 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 4 3 46 flower_pot run execute if block 104 94 965 green_shulker_box run scoreboard objectives add DarkRedBush dummy
execute if block 4 3 46 potted_dead_bush run scoreboard objectives remove DarkRedBush
scoreboard players add @e[tag=MainHubAEC] DarkRedBush 0
execute if block 104 94 965 green_shulker_box run scoreboard players add @e[scores={DarkRedBush=0..100}] DarkRedBush 1
execute if block 104 94 965 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{DarkRedBush:1b}}]} run scoreboard objectives remove DarkRedBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{DarkRedBush:1b}}}] run scoreboard objectives remove DarkRedBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{DarkRedBush:1b}}]}] run scoreboard objectives remove DarkRedBush
execute if entity @e[scores={DarkRedBush=100..}] run replaceitem block 104 94 965 container.13 dead_bush{display:{Name:"{\"text\":\"Bush of Chaos\",\"italic\":\"false\",\"color\":\"dark_red\"}",Lore:["Forged in the darkest depths of Hades, this","chained Bush was used by a guy with red","swirly tattoos to hunt a War God for pulling","a really mean prank that gave him bad dreams."]},Enchantments:[{id:"minecraft:lure",lvl:10}],DarkRedBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={DarkRedBush=100..}] run particle enchant 104 94.8 965 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={DarkRedBush=100..}] run playsound entity.zombie_villager.converted master @a 104 94 965 0.5 1 0

# RED
execute unless block 109 67 1053 green_shulker_box run setblock 109 67 1053 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 3 3 46 flower_pot run execute if block 109 67 1053 green_shulker_box run scoreboard objectives add RedBush dummy
execute if block 3 3 46 potted_dead_bush run scoreboard objectives remove RedBush
scoreboard players add @e[tag=MainHubAEC] RedBush 0
execute if block 109 67 1053 green_shulker_box run scoreboard players add @e[scores={RedBush=0..100}] RedBush 1
execute if block 109 67 1053 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{RedBush:1b}}]} run scoreboard objectives remove RedBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{RedBush:1b}}}] run scoreboard objectives remove RedBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{RedBush:1b}}]}] run scoreboard objectives remove RedBush
execute if entity @e[scores={RedBush=100..}] run replaceitem block 109 67 1053 container.13 dead_bush{display:{Name:"{\"text\":\"Hidden Bush\",\"italic\":\"false\",\"color\":\"red\"}",Lore:["This concealed Assassin's wrist-Bush first","required amputation of the ring finger, until","the 13th century, when it was altered so","that all fingers would be removed instead."]},Enchantments:[{id:"minecraft:lure",lvl:10}],RedBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={RedBush=100..}] run particle enchant 109 67.8 1053 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={RedBush=100..}] run playsound entity.zombie_villager.converted master @a 109 67 1053 0.5 1 0

# DARK GRAY
execute unless block 38 84 1102 green_shulker_box run setblock 38 84 1102 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 2 3 46 flower_pot run execute if block 38 84 1102 green_shulker_box run scoreboard objectives add DarkGrayBush dummy
execute if block 2 3 46 potted_dead_bush run scoreboard objectives remove DarkGrayBush
scoreboard players add @e[tag=MainHubAEC] DarkGrayBush 0
execute if block 38 84 1102 green_shulker_box run scoreboard players add @e[scores={DarkGrayBush=0..100}] DarkGrayBush 1
execute if block 38 84 1102 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{DarkGrayBush:1b}}]} run scoreboard objectives remove DarkGrayBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{DarkGrayBush:1b}}}] run scoreboard objectives remove DarkGrayBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{DarkGrayBush:1b}}]}] run scoreboard objectives remove DarkGrayBush
execute if entity @e[scores={DarkGrayBush=100..}] run replaceitem block 38 84 1102 container.13 dead_bush{display:{Name:"{\"text\":\"Busharang\",\"italic\":\"false\",\"color\":\"dark_gray\"}",Lore:["Designed by a ninja, this projectile was","thrown from the shadows to disarm criminals","causing them demand why someone would hide","in the dark and toss Dead Bushes at them."]},Enchantments:[{id:"minecraft:lure",lvl:10}],DarkGrayBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={DarkGrayBush=100..}] run particle enchant 38 84.8 1102 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={DarkGrayBush=100..}] run playsound entity.zombie_villager.converted master @a 38 84 1102 0.5 1 0

# DARK GREEN
execute unless block 25 40 1012 green_shulker_box run setblock 25 40 1012 green_shulker_box[facing=up]{CustomName:"{\"text\":\"Shecret Weapon Box\"}"}
execute if block 1 3 46 flower_pot run execute if block 38 84 1102 green_shulker_box run scoreboard objectives add DarkGreenBush dummy
execute if block 1 3 46 potted_dead_bush run scoreboard objectives remove DarkGreenBush
scoreboard players add @e[tag=MainHubAEC] DarkGreenBush 0
execute if block 25 40 1012 green_shulker_box run scoreboard players add @e[scores={DarkGreenBush=0..100}] DarkGreenBush 1
execute if block 25 40 1012 green_shulker_box{Items:[{id:"minecraft:dead_bush",tag:{DarkGreenBush:1b}}]} run scoreboard objectives remove DarkGreenBush
execute if entity @e[nbt={Item:{id:"minecraft:dead_bush",tag:{DarkGreenBush:1b}}}] run scoreboard objectives remove DarkGreenBush
execute if entity @a[nbt={Inventory:[{id:"minecraft:dead_bush",tag:{DarkGreenBush:1b}}]}] run scoreboard objectives remove DarkGreenBush
execute if entity @e[scores={DarkGreenBush=100..}] run replaceitem block 25 40 1012 container.13 dead_bush{display:{Name:"{\"text\":\"Exbushimental MIRV\",\"italic\":\"false\",\"color\":\"dark_green\"}",Lore:["This pre-War Capital Wasteland launcher could","fire up to 8 mini-Bushes. Unfortunately this","did little damage, resulting in the launcher","being useless apart from its prickly thorns."]},Enchantments:[{id:"minecraft:lure",lvl:10}],DarkGreenBush:1b,ShecretBush:1b} 1
execute if entity @e[scores={DarkGreenBush=100..}] run particle enchant 25 40.8 1012 0.1 0.3 0.1 0.8 100
execute if entity @e[scores={DarkGreenBush=100..}] run playsound entity.zombie_villager.converted master @a 25 40 1012 0.5 1 0


# TALLY BUSHES
scoreboard players add @e[tag=MainHubAEC] TallyBushes 1
execute if entity @e[scores={TallyBushes=50}] run setblock 12 11 14 redstone_block
execute if entity @e[scores={TallyBushes=100}] run setblock 12 11 14 clay
execute if entity @e[scores={TallyBushes=100}] run scoreboard objectives add BushTotal dummy
execute if block 12 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 11 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 10 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 9 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 8 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 7 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 6 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 5 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 4 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 3 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 2 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1
execute if block 1 3 46 potted_dead_bush run scoreboard players add @e[tag=MainHubAEC] BushTotal 1

#execute if entity @e[scores={BushTotal=1..}] run advancement grant @a only d3:folder_c/secret_branch_item
execute if entity @e[scores={BushTotal=1}] run tellraw @a {"text":"","extra":[{"text":">> 1/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=2}] run tellraw @a {"text":"","extra":[{"text":">> 2/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=3}] run tellraw @a {"text":"","extra":[{"text":">> 3/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=4}] run tellraw @a {"text":"","extra":[{"text":">> 4/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=5}] run tellraw @a {"text":"","extra":[{"text":">> 5/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=6}] run tellraw @a {"text":"","extra":[{"text":">> 6/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=7}] run tellraw @a {"text":"","extra":[{"text":">> 7/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=8}] run tellraw @a {"text":"","extra":[{"text":">> 8/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=9}] run tellraw @a {"text":"","extra":[{"text":">> 9/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=10}] run tellraw @a {"text":"","extra":[{"text":">> 10/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=11}] run tellraw @a {"text":"","extra":[{"text":">> 11/12 Shecret Weapons Collected! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=12}] run tellraw @a {"text":"","extra":[{"text":">> All 12 Shecret Weapons Collected! You've unlocked the fountain grate! <<","color":"dark_green","bold":"true"}]}
execute if entity @e[scores={BushTotal=12}] run fill -5 90 1031 -5 90 1031 iron_trapdoor[facing=north,open=true,waterlogged=true] replace iron_trapdoor[open=false]
execute if entity @e[scores={BushTotal=12}] run fill -5 90 1035 -5 90 1035 iron_trapdoor[facing=south,open=true,waterlogged=true] replace iron_trapdoor[open=false]
execute if entity @e[scores={BushTotal=12}] run playsound entity.player.splash.highspeed ambient @a -5 90 1033 1 1 0
execute if entity @e[scores={BushTotal=12}] run playsound block.iron_trapdoor.open master @a -5 90 1033 2 1 1
execute if entity @e[scores={BushTotal=12}] run kill @e[tag=Birdie]
execute if entity @e[scores={BushTotal=12}] run summon chicken -5 91 1033 {CustomName:"{\"text\":\"Birdie\",\"color\":\"dark_green\"}",Age:-2147483648,Tags:["Birdie"],Rotation:[270f,0f]}
execute if entity @e[scores={BushTotal=12}] run particle dolphin -5 91.8 1033 0.3 0.3 1 1 1500 force
execute if entity @e[scores={TallyBushes=100..}] run scoreboard objectives remove BushTotal
execute if entity @e[scores={TallyBushes=100..}] run scoreboard objectives remove TallyBushes

execute if block 12 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 11 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 10 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 9 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 8 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 7 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 6 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 5 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 4 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 3 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 2 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]
execute if block 1 3 46 flower_pot run fill -5 90 1031 -5 90 1035 iron_trapdoor[open=false,half=top] replace iron_trapdoor[open=true]

fill -4 82 1031 -4 84 1035 structure_void replace water
fill -5 83 1031 -5 89 1035 water replace air