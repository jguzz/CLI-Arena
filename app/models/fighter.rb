class Fighter < ActiveRecord::Base
    belongs_to :weapon
    belongs_to :type
end