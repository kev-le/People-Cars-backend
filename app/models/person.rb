class Person < ApplicationRecord
    has_many :cars, dependent: :delete_all, :foreign_key => "personId"
end
