class User < ApplicationRecord
  has_many :favorites
  has_many :therapists, through: :favorites

  has_secure_password

  validates :full_name, presence: :true, length: { minimum: 5, maximum: 200 }
  validates :email, presence: :true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password_digest, presence: :true
end
