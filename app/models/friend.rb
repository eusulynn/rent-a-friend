class Friend < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
end
