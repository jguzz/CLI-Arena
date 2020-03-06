def arena
    fighter1 = Fighter.find_by(name: "Warrior 1")
    fighter2 = Fighter.find_by(name: "Rogue 1")
    fighter3 = Fighter.find_by(name: "Brawler 1")

    opponent_array = [fighter1, fighter2, fighter3]
    
    welcome
    user_fighter = your_fighter
    user_fighter = fighter_stats(user_fighter)
    while opponent_array.length != 0
        opponent = fighter_stats(opponent_array.last)
        puts "Your first opponent is #{opponent.name}... Good luck!"
        fight_interface(user_fighter, opponent)
        opponent_array.pop
        if user_fighter.hp < 0
            return
        elsif opponent_array.length != 0
            puts "Your next opponent is #{opponent_array.last.name}..."
        else
            puts "YOU HAVE WON CLI ARENA!!!! WHAT A BADASS!!!"
            return
        end
    end
    puts "Thank you for playing, see you next time!"
end