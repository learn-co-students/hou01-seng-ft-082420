class AddBreedToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :breed, :string
  end
end
