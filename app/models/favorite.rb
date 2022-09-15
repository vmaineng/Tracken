class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :food

  has_many :meal_categories, through: :foods

  validates :user, uniqueness: { scope: :food_id}
end
