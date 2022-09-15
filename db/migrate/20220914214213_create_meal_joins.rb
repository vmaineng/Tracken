class CreateMealJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_joins do |t|
      t.belongs_to :meal_category, null: false, foreign_key: true
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
