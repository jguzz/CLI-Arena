class Fighter < ActiveRecord::Base
    #Fighter model
    belongs_to :weapon
    belongs_to :type
end