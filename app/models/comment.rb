class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :parent, class_name: 'Comment', foreign_key: 'parent_id'

  has_many :comments
end
