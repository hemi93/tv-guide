class Channel < ApplicationRecord
  belongs_to :category
  has_many :shows
  has_many :schedules, through: :shows
end
