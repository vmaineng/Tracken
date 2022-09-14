class MealJoinSerializer < ActiveModel::Serializer
  attributes :id
  has_one :meal_id
  has_one :food_id
end
