class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
