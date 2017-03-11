# frozen_string_literal: true
# :nodoc:
class Role < ActiveRecord::Base
  has_many :users
end
