# frozen_string_literal: true
# :nodoc:
class Vote < ActiveRecord::Base
  belongs_to :post
  belongs_to :comment
end
