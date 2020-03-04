class Type < ActiveRecord::Base
    has_many :fighters
    has_many :weapons, through: :fighters
end