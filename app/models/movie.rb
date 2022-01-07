class Movie < ApplicationRecord
  validates :rating, numericality: { in: 0..5 }
end
