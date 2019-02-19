class Artwork < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  has_many :bookings
end
