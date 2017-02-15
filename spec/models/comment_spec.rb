require 'rails_helper'

describe Comment do
  it { should have_db_column :user_id }
  it { should have_db_column :photo_id }
  it { should have_db_column :content }
end
