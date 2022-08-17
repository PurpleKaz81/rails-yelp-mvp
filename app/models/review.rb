class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: { message: ' cannot be blank' }
  validates :rating, presence: { message: ' cannot be blank' }
  validates :rating, inclusion: { in: 0..5, message: ' should be between 0 to 5' }
  validates :rating, numericality: { only_integer: true }
end
