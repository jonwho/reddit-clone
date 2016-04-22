class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :parent, class_name: 'Comment'

end
