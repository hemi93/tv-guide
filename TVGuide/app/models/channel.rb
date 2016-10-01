# Holds information about single channel
class Channel < ApplicationRecord
  belongs_to :category
  has_many :schedules, through: :shows
  has_many :shows
  validates :name, presence: true, uniqueness: true
end
