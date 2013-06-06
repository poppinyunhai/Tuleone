class Revert < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :content, :post_id, :user_id
  validates_presence_of :content
end
