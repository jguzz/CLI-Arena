class Weapon < ActiveRecord::Base
    #Weapon model
    has_many :fighters
    has_many :types, through: :fighters
end