require 'rails_helper'

describe User do
  it { should have_db_column :name }
  it { should have_db_column :avatar_file_name }
  it { should have_db_column :avatar_content_type }
  it { should have_db_column :avatar_file_size }
  it { should have_db_column :avatar_updated_at }
end
