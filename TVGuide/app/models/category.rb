class Category < ApplicationRecord
  has_many :channels
  has_many :shows, through: :channels
  validates :name, presence: true
end
