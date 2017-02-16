require 'rails_helper'

describe Tag do
  it { should validate_presence_of :snippet }
  it { should validate_length_of(:snippet).is_at_most(10) }
end
