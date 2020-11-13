class Therapist < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  validates :full_name, presence: true, length: { minimum: 5, maximum: 200 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
