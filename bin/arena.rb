def arena
    fighter1 = Fighter.find_by(name: "Gabbie the Brawler")
    fighter2 = Fighter.find_by(name: "Chett the Wizard")
    fighter3 = Fighter.find_by(name: "Brianna the Rogue")
    fighter4 = Fighter.find_by(name: "Jeff the Battlemage")
    fighter5 = Fighter.find_by(name: "Tashawn the Warrior")

    opponent_array = [fighter1, fighter2, fighter3, fighter4, fighter5].shuffle
    
    welcome
    user_fighter = your_fighter
    user_fighter = fighter_stats(user_fighter)
    while opponent_array.length != 0
        opponent = fighter_stats(opponent_array.last)
        puts "Your opponent is #{opponent.name}... Good luck!".red
        fight_interface(user_fighter, opponent)
        opponent_array.pop
        if user_fighter.hp < 0
            return
        elsif opponent_array.length != 0
            puts "Your next opponent is #{opponent_array.last.name}...".red
        else
            puts "YOU HAVE WON CLI ARENA!!!! WHAT A BADASS!!!".green
            return
        end
    end
    puts "Thank you for playing, see you next time!".red
end