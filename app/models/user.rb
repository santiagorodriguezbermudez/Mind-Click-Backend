class User < ApplicationRecord
  has_many :favorites
  has_many :therapists, through: :favorites

  validates :full_name, presence: :true, length: { minimum: 5, maximum: 200 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
