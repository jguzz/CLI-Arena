#=======================================================================================
#WEAPONS
Weapon.create({
    #id 1
    weapon_type: "Shortsword",
    hit_percent: 60,
    attack: 5
})
Weapon.create({
    #id 2
    weapon_type: "Dagger",
    hit_percent: 100,
    attack: 3
})
Weapon.create({
    #id 3
    weapon_type: "Battleaxe",
    hit_percent: 50,
    attack: 6
})
#=======================================================================================
#CHARACTER TYPES
#id: 1
Type.create({
    name: "Rogue",
    hp: 25,
    attack: 2,
    hit_percent: 90,
    dodge: 10
})
#id: 2
Type.create({
    name: "Warrior",
    hp: 27,
    attack: 4,
    hit_percent: 80,
    dodge: 5
})
#id: 3
Type.create({
    name: "Brawler",
    hp: 30,
    attack: 6,
    hit_percent: 70,
    dodge: 2
})

#=======================================================================================
#FIGHTERS
Fighter.create({
    name: "Warrior 1",
    weapon_id: 3, #Battleaxe
    type_id: 2 #Warrior
})
Fighter.create({
    name: "Rogue 1",
    weapon_id: 2,#dagger
    type_id: 1 #rogue
})
Fighter.create({
    name: "Brawler 1",
    weapon_id: 1,#shortsword
    type_id: 3 #Brawler
})