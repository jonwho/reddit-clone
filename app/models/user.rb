# frozen_string_literal: true
# :nodoc:
class User < ActiveRecord::Base
  has_secure_token :auth_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_default_role

  # if user is deleted should soft delete these for some time
  # hard delete maybe after 30 days?
  has_many :posts
  has_many :comments

  belongs_to :role

  def post_votes
    posts.votes
  end

  def comment_votes
    comments.votes
  end

  def allow_token_once
    regenerate_token
    touch(:auth_token_created_at)
  end

  def logout
    invalidate_token
  end

  def with_unexpired_token(token, period)
    where(auth_token: token).where('auth_token_created_at >= ?', period).first
  end

  def invalidate_token
    self.update_columns(auth_token: nil)
  end

  def self.valid_login?(email, password)
    user = find_by(email: email)
    if user && user.authenticate(password)
      user
    end
  end

  private

  def set_default_role
    self.role ||= Role.find_by_name('regular')
  end

  def invalidate_token
    update_columns(auth_token: nil)
    touch(:auth_token_created_at)
  end
end
