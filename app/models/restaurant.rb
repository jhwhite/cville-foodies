class Restaurant < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  searchable do
    text :name
  end
  
  validates :name, :presence => true
  
  has_many :reviews
  
end
