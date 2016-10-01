require 'rails_helper'

describe Show do
  it { should belong_to(:channel) }
  it { should have_db_column(:name) }
  it { should have_db_index(:channel_id) }
  it { should have_many(:schedules) }
  it { should validate_presence_of(:name) }
end
