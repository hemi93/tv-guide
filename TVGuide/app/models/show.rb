class Show < ApplicationRecord
  belongs_to :channel
  has_many :schedules
  validates :name, presence: true, uniqueness: { scope: :channel_id }
end
