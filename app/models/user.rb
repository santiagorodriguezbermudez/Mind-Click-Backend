class User < ApplicationRecord
  has_many :favorites
  has_many :therapists, through: :favorites
end
