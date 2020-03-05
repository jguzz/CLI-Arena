# class Attack(player, cpu)

# end
def hit(attacker, defender)
    defenders_original_hp = defender.hp
    defender.hp -= attacker.attack
    puts "#{defender.name} took #{defenders_original_hp - defender.hp} damage!"
end

def chance_to_hit(hit_percent, attacker, defender)
    random = rand(100)
    chance_to_hit = hit_percent
    if chance_to_hit >= random
        #puts "The enemy took damage"
        hit(attacker, defender)
    else    
        puts "You missed!"
    end 
end

def fighter_stats(fighter)
    weapon = fighter.weapon 
    type = fighter.type 
    fighter[:hp] = type.hp
    fighter[:attack] = type.attack + weapon.attack
    fighter[:hit_percent] = (type.hit_percent + weapon.hit_percent) / 2
    fighter
end

def attack(player, opponent)
    chance_to_hit(player.hit_percent, player, opponent)
end

# def defend(player, opponent)
    
# end