class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :profiles

    has_many :foods, through: :favorites

    validates :username, uniqueness: true
end
