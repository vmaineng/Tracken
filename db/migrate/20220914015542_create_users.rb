class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :firstName
      t.string :lastName
      t.integer :startingWeight
      t.integer :goalWeight
      t.integer :currentWeight

      t.timestamps
    end
  end
end
