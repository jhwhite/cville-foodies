class Review < ActiveRecord::Base
  validates :poster, :presence => true
  validates :article, :presence => true
  
  attr_accessor :poster
  
  belongs_to :restaurants
end
