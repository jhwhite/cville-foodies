class AddSlugToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :slug, :string
    add_index :restaurants, :slug
  end
end
