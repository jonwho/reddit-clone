# frozen_string_literal: true
# :nodoc:
class Post < ActiveRecord::Base
  # use soft delete so that children comments can still persist
  has_many :comments
  has_many :votes
  belongs_to :user

  validates :id_slug, uniqueness: true
  # TODO: comment/uncomment this validation when testing
  validates :user, presence: true

  scope :by_date, -> { order(created_at: :desc) }
end
