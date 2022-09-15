class Food < ApplicationRecord
    belongs_to :meal_categories

    has_many :favorites
    has_many :users, through: :favorites
    
end
