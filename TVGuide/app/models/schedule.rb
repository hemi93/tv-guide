# Holds information about specific date of airing the show
class Schedule < ApplicationRecord
  belongs_to :show
  has_many :schedules
  has_one :channel, through: :show
  validates :date, presence: true
end
