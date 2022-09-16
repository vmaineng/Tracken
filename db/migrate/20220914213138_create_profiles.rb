class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :image_url
      t.timestamps
    end
  end
end
