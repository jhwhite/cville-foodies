class Review < ActiveRecord::Base
  validates :poster, :presence => true
  validates :article, :presence => true
  
  belongs_to :restaurants
end
