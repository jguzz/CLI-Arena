require 'tty-prompt'

def user_choice_warrior
    type_hash = Hash.new
    type_hash[:name] = "Warrior"
    type_hash[:id] = 2
    type_hash
end

def user_choice_rogue
    type_hash = Hash.new
    type_hash[:name] = "Rogue"
    type_hash[:id] = 1
    type_hash
end

def user_choice_brawler
    type_hash = Hash.new
    type_hash[:name] = "Brawler"
    type_hash[:id] = 3
    type_hash
end

def user_choice_wizard
    type_hash = Hash.new
    type_hash[:name] = "Wizard"
    type_hash[:id] = 4
    type_hash
end

def user_choice_sword
    weapon_hash = Hash.new
    weapon_hash[:name] = "Shortsword"
    weapon_hash[:id] = 1
    weapon_hash
end

def user_choice_dagger
    weapon_hash = Hash.new
    weapon_hash[:name] = "Dagger"
    weapon_hash[:id] = 2
    weapon_hash
end

def user_choice_axe
    weapon_hash = Hash.new
    weapon_hash[:name] = "Battleaxe"
    weapon_hash[:id] = 3
    weapon_hash
end

def user_choice_knuckles
    weapon_hash = Hash.new
    weapon_hash[:name] = "Brass Knuckles"
    weapon_hash[:id] = 4
    weapon_hash
end

def user_choice_staff
    weapon_hash = Hash.new
    weapon_hash[:name] = "Staff"
    weapon_hash[:id] = 5
    weapon_hash
end

def get_type_from_user
    type_hash = Hash.new
    prompt = TTY::Prompt.new
    choices = {
        "Warrior" => -> do type_hash = user_choice_warrior end,
        "Rogue" => -> do type_hash = user_choice_rogue end,
        "Brawler" => -> do type_hash = user_choice_brawler end,
        "Wizard" => -> do type_hash = user_choice_wizard end
    }
    prompt.select("Choose your Fighter Type".red, choices, symbols: {marker: '🗡'})
    return type_hash
end

def get_weapon_from_user
    weapon_hash = Hash.new
    prompt = TTY::Prompt.new
    choices = {
        "Shortsword" => -> do weapon_hash = user_choice_sword end,
        "Dagger" => -> do weapon_hash = user_choice_dagger end,
        "Battleaxe" => -> do weapon_hash = user_choice_axe end,
        "Brass Knuckles" => -> do weapon_hash = user_choice_knuckles end,
        "Staff" => -> do weapon_hash = user_choice_staff end
    }
    prompt.select("Choose your Weapon".red, choices, symbols: {marker: '🗡'})
    return weapon_hash
end

def your_fighter
    type = get_type_from_user
    weapon = get_weapon_from_user
    puts "And what's your name, Fighter?".red
    user_input = gets.chomp.capitalize
    fighter = Fighter.create(name: user_input, type_id: type[:id], weapon_id: weapon[:id])
   
    puts "#{user_input}, You have selected a #{type[:name]}, and are fighting with a #{weapon[:name]}. Nice! You're ready for combat. Good luck...".green
    user_fighter = fighter_stats(fighter)
    puts "Your stats look like this... 
         HP: #{user_fighter.hp}
         Attack Damage: #{user_fighter.attack}
         Hit %: #{user_fighter.hit_percent}
         Dodge %: #{user_fighter.dodge}".yellow
    user_fighter
end