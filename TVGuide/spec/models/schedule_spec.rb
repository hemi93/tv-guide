require 'rails_helper'

describe Schedule do
  it { should belong_to(:show) }
  it { should have_db_column(:date).of_type(:datetime) }
  it { should have_db_index(:show_id) }
end
