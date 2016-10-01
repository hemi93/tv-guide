class Show < ApplicationRecord
  belongs_to :channel
  has_many :schedules
end
