class User < ActiveRecord::Base
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

  private

  def set_default_role
    self.role ||= Role.find_by_name('regular')
  end
end
