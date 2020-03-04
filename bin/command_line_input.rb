require 'pry'

def welcome
    puts "Hello! Welcome to CLI Arena!!"
end

def get_type_from_user
    type_hash = {}
    i = 0
    while i < 1 
        puts "Please select your Fighter Type"
        puts "Enter Warrior, Rogue, or Brawler"
        user_input = gets.chomp.capitalize
        if user_input == "Warrior"
            type_hash[:name]= "Warrior"
            type_hash[:id] = 2
            break
        elsif user_input == "Rogue"
            type_hash[:name]= "Rogue"
            type_hash[:id]= 1
            break
        elsif user_input == "Brawler"
            type_hash[:name] = "Brawler"
            type_hash[:id] = 3
            break
        else 
            puts "Invalid option"
        end
    end
    return type_hash
end

def get_weapon_from_user
    weapon_hash = {}
    i = 0
    while i <= 0
        puts "Please select your Weapon"
        puts "Enter Shortsword, Battleaxe, or Dagger"
        user_input = gets.chomp.capitalize
        if user_input == "Shortsword"
            weapon_hash[:name] = "Shortsword"
            weapon_hash[:id] = 1
            break
        elsif user_input == "Dagger"
            weapon_hash[:name] = "Dagger"
            weapon_hash[:id] = 2
            break
        elsif user_input == "Battleaxe"
            weapon_hash[:name] = "Battleaxe"
            weapon_hash[:id] = 3
            break
        else 
            puts "Invalid option"
        end
    end
    return weapon_hash
end

def your_fighter
    type = get_type_from_user
    weapon = get_weapon_from_user
    fighter = Fighter.create(type_id: type[:id], weapon_id: weapon[:id])
    puts "You have selected a #{type[:name]}, and are fighting with a #{weapon[:name]}. Nice! You're ready for combat. Good luck, Fighter..."
end

binding.pry
puts "something"