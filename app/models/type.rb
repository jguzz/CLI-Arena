class Type < ActiveRecord::Base
    #Type model
    has_many :fighters
    has_many :weapons, through: :fighters
end