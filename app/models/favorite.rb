class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :food_id
end
