class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :email
end
