class Post < ActiveRecord::Base
  # use soft delete so that children comments can still persist
  has_many :comments
  has_many :votes
  belongs_to :user
end
