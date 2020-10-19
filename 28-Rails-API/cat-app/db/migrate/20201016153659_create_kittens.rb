class CreateKittens < ActiveRecord::Migration[6.0]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :owner_id

      t.timestamps
    end
  end
end
