require 'colorize'
def hit(attacker, defender)
    defenders_original_hp = defender.hp
    defender.hp -= attacker.attack
    puts "#{defender.name} took #{defenders_original_hp - defender.hp} damage!".red
end

#Uses hit percentage to determine if the opponent will be hit or not.
#If the opponnent is hit, will call the method HIT else puts you missed.
def chance_to_hit(hit_percent, attacker, defender)
    random = rand(100)
    chance_to_hit = hit_percent - defender.dodge
    if chance_to_hit >= random
        #puts "The enemy took damage"
        hit(attacker, defender)
    else    
        puts "#{attacker.name} missed!".yellow
    end 
end

#Created stats (hp, attack, hit%) for a fighter object.
def fighter_stats(fighter)
   
    weapon = fighter.weapon 
    type = fighter.type 
    fighter[:hp] = type.hp
    fighter[:attack] = type.attack + weapon.attack
    fighter[:hit_percent] = (type.hit_percent + weapon.hit_percent) / 2
    fighter[:max_hp] = type.hp
    fighter[:dodge] = type.dodge
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
        puts "#{opponent.name} missed!".yellow
    end 
end

#User chooses to defend and will takes half the damage from the oppponent.
def defend_attack(user, opponent)
    users_original_hp = user.hp 
    user.hp -= (opponent.attack / 2)
    puts "#{user.name} blocked #{opponent.name} and only took #{users_original_hp - user.hp} damage!".yellow
end

def heal(user)
    if user.hp == user.max_hp
        puts "Already at full health!".blue
    else
        user.hp += (user.max_hp * 0.25).round
        puts "#{user.name} gained #{(user.max_hp * 0.25).round} health back!".blue
    end
end

#Opponent does a randomized action
def opp_turn(fighter, opponent)
    
    if opponent.hp <= 0
        puts "#{opponent.name} is down!".red
        return #this exits the fight
    end
    
    puts "#{opponent.name}'s turn!"
    moves = ["attack", "defend", "heal"].sample
    
    if moves == "attack" 
        puts "#{opponent.name} attacks!".red
        attack(opponent,fighter)
    elsif moves == "defend"
        puts "#{opponent.name} is defending!".yellow
        defend(opponent, fighter)
    else moves == "heal"
        puts "#{opponent.name} is healing!".blue
        heal(opponent)
    end
    
end 