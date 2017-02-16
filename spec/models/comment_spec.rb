require 'rails_helper'

describe Comment do
  it { should have_db_column :user_id }
  it { should have_db_column :photo_id }
  it { should have_db_column :content }
  it { should validate_presence_of :content}

  it 'validates Factory Girl setup for comments' do
    comment = FactoryGirl.build(:comment)
    comment.content.should eq 'something'
    comment.photo_id.integer?.should eq true
    comment.user_id.integer?.should eq true
  end
end
