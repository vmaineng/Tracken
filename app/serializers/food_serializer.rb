class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :serving, :carbs, :fat, :protein, :calories
end
