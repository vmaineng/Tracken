class User < ApplicationRecord
    has_many :favorites
    has_many :profiles

    has_many :foods, through: :favorites

    validates :users, uniqueness: true
end
