# class Attack(player, cpu)

# end
def hit(attacker, defender)
    defenders_original_hp = defender.hp
    defender.hp -= attacker.attack
    puts "#{defender.name} took #{defenders_original_hp - defender.hp} damage!"
end

#Uses hit percentage to determine if the opponent will be hit or not.
#If the opponnent is hit, will call the method HIT else puts you missed.
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

#Created stats (hp, attack, hit%) for a fighter object.
def fighter_stats(fighter)
    weapon = fighter.weapon 
    type = fighter.type 
    fighter[:hp] = type.hp
    fighter[:attack] = type.attack + weapon.attack
    fighter[:hit_percent] = (type.hit_percent + weapon.hit_percent) / 2
    fighter
end

#calles chance to hit to execute an attack.
def attack(player, opponent)
    chance_to_hit(player.hit_percent, player, opponent)
end

#Checks the opponents hit%, if hits run defend.
def defend(user, opponent)
    random = rand(100)
    chance_to_hit = opponent.hit_percent
    if chance_to_hit >= random
        #puts "The enemy took damage"
        defend_attack(user, opponent)
    else    
        puts "#{opponent.name} missed!"
    end 
end

#User chooses to defend and will takes half the damage from the oppponent.
def defend_attack(user, opponent)
    users_original_hp = user.hp 
    user.hp -= (opponent.attack / 2)
    puts "#{user.name} blocked #{opponent.name} and only took #{users_original_hp - user.hp} damage!"
end