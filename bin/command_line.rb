require 'tty-prompt'
def welcome
    puts "Hello Fighter! Welcome to CLI Arena!!"
end

def fight_interface(fighter, opponent)
    prompt = TTY::Prompt.new
    # fighter.hp = fighter.max_hp
    # opponent.hp = opponent.max_hp
    choices = {
        "Attack" => -> do attack(fighter, opponent) end,
        "Defend" => -> do defend(fighter, opponent) end,
        "Heal" => -> do heal(fighter) end
    }
    while opponent.hp > 0 && fighter.hp > 0
        puts "You're at #{fighter.hp} HP"
        prompt.select("Make your move!", choices, symbols: {marker: '🗡'})
        opp_turn(fighter, opponent)
        if opponent.hp < (opponent.max_hp/3)
            puts "#{opponent.name} is looking hurt!"
        end
    end
    
    fighter.hp > 0 ? (puts "You are victorious!!!") : (puts "You've been defeated. Better luck next time.")
    return fighter
end