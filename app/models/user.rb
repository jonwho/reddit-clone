class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # if user is deleted should soft delete these for some time
  # hard delete maybe after 30 days?
  has_many :posts
  has_many :comments

  def post_votes
    posts.votes
  end

  def comment_votes
    comments.votes
  end
end
