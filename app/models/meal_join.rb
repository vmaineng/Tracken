class MealJoin < ApplicationRecord
  belongs_to :meal_id
  belongs_to :food_id
end
