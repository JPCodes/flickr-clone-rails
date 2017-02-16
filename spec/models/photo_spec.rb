require 'rails_helper'
require 'pry'

describe Photo do
  it { should have_db_column :user_id }
  it { should have_db_column :image_file_name }
  it { should have_db_column :image_content_type }
  it { should have_db_column :image_file_size }
  it { should have_db_column :image_updated_at }
end
