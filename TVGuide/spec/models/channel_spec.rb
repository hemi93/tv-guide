require 'rails_helper'

describe Channel do
  it { should belong_to(:category) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_index(:category_id) }
  it { should have_many(:schedules).through(:shows) }
  it { should have_many(:shows) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
