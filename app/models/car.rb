class Car < ApplicationRecord
    belongs_to :person, :foreign_key => "personId"
end
