class Movie < ApplicationRecord
  MAX_RATING = 5

  validates :rating, numericality: { in: 0..MAX_RATING }
end
