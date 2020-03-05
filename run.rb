require_relative "./config/environment"

welcome
fighter = your_fighter
puts "HERE HERE #{fighter.name.upcase}, DEFENDER OF THE REALM AND ALL AROUND BADASS!!!"

# new_fighter = fighter_stats(fighter)
opponent = Fighter.find_by(name: "Warrior 1")
opponent = fighter_stats(opponent)
#puts("hp:#{new_fighter.hp}  attack: #{new_fighter.attack}  hit_per: #{new_fighter.hit_percent}")
fight_commands(fighter, opponent)