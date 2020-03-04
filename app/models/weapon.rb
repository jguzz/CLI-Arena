class Weapon < ActiveRecord::Base
    has_many :fighters
    has_many :types, through: :fighters
end