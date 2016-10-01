require 'rails_helper'

describe Category do
  it { should have_many(:channels) }
  it { should have_many(:shows).through(:channels) }
  it { should have_db_column(:name).of_type(:string) }
end
