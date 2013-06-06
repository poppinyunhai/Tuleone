class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :node
  has_many :reverts
  has_attached_file :avatar 
  attr_accessible :content, :revert_id, :title, :user_id,
  :node_id, :avatar
  validates_presence_of :content, :user_id
end
