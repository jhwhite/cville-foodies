class AddPosterToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :poster, :string
  end
end
