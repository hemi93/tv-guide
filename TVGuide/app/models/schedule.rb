class Schedule < ApplicationRecord
  belongs_to :show
  has_many :schedules
end
