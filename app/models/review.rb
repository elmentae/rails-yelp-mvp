class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: (0..5), numericality: { only_integer: true }
  validates :content, :rating, presence: true
end
