class Node < ActiveRecord::Base
  has_many :posts
  attr_accessible :name
  validates_presence_of :name
end
