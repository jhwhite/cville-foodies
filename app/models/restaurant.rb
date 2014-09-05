class Restaurant < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates :name, :presence => true
  
  has_many :reviews
  
end
