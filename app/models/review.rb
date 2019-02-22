class Review < ApplicationRecord
  belongs_to :artwork
  validates :content, length: { minimum: 5 }
end
