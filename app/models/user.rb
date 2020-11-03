class User < ApplicationRecord
  has_many :favorites
  has_many :therapists, through: :favorites

  validates :email, presence: true, uniqueness: true
  validates :full_name
end
