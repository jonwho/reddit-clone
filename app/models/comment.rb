# frozen_string_literal: true
# :nodoc:
class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :parent, class_name: 'Comment', foreign_key: 'parent_id'

  has_many :comments
  has_many :votes
end
