class Review < ApplicationRecord

  RATING = (0..5)

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
  belongs_to :restaurant
end
