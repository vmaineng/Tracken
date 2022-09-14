class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :firstName, :lastName, :startingWeight, :goalWeight, :currentWeight, :integer
end
