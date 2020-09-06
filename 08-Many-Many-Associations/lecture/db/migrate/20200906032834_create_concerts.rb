class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :artist_name

      t.timestamps
    end
  end
end
