class Pizza < ApplicationRecord
  has_one_attached :photo
  validates :name, :price, :description, :photo, :pizza_type, presence: true
end
