class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :serving
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.integer :calories

      t.timestamps
    end
  end
end
