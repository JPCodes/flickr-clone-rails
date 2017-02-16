require 'rails_helper'

describe 'the create a photo process' do
  before() do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Log in'
  end

  it 'will create a photo' do
    click_on 'Upload a Photo'
    attach_file 'Image', "#{Rails.root}/spec/fixtures/images/test_photo2.jpg"
    fill_in 'Description', :with => 'It\'s Wall-e'
    click_on 'Upload'
    expect(page).to have_content('It\'s Wall-e')
  end

  it 'will fail to create a photo' do
    click_on 'Upload a Photo'
    click_on 'Upload'
    expect(page).to have_content('errors')
  end
end
