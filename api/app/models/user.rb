class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password # already handles password presence

  validates :password, length: { minimum: 8 }
  validate :matching_passwords, if: -> { password_confirmation.present? }
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :email, uniqueness: true, allow_blank: true
  validate :email_format, if: -> { email.present? }

  private

  def matching_passwords
    password == password_confirmation
  end

  def email_format
    if (email =~ VALID_EMAIL_REGEX).nil?
      errors.add(:email, 'is invalid')
    end
  end
end
