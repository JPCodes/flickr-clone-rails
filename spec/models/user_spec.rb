require 'rails_helper'

describe User do
  it { should have_db_column :name }
  it { should have_db_column :avatar_file_name }
  it { should have_db_column :avatar_content_type }
  it { should have_db_column :avatar_file_size }
  it { should have_db_column :avatar_updated_at }

  it 'validates Factory Girl setup for users' do
    user = FactoryGirl.build(:user)
    user.name.should eq 'anon'
    user.email.empty?.should eq false
    user.password.should eq 'anonymous'
  end
end
