class Post < ActiveRecord::Base
  acts_as_indexed :fields => [:title, :name, :content]

  validates :name, :presence => true
  validates :title, :presence => true,
                    :length => { :minimum =>5 }
  attr_accessible :content, :name, :title, :tags_attributes, :category_id, :body, :commenter
  has_many :comments, :dependent => :destroy
  has_many :tags
  belongs_to  :category

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }


end
