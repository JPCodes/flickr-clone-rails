require 'rails_helper'

describe 'the create a comment process' do
  before do
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => @user.email
    fill_in 'Password', :with => @user.password
    click_on 'Log in'
    photo = FactoryGirl.create(:photo)
    visit photo_path(photo)
  end

  it 'will create a comment' do
    fill_in 'Content', :with => 'This is a new comment'
    click_on 'Create Comment'
    expect(page).to have_content("This is a new comment #{@user.email}")
  end

  it 'will fail to create a comment' do
    click_on 'Create Comment'
    expect(page).to_not have_content("#{@user.email}")
  end
end
