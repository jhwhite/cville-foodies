class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :poster
      t.text :article
      t.datetime :date
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
