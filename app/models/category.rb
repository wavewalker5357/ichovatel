class Category < ActiveRecord::Base
  
  validates :name, :presence => true,
                   :length => { :minimum =>3 }
  attr_accessible :name
  has_many :posts
  belongs_to :category
  

end
