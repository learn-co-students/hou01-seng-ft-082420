class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do | t | 
      t.string :name
      t.integer :owner_id
      # t.string :color
    end
  end
end
