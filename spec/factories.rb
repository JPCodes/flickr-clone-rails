FactoryGirl.define do
  factory(:user) do
    email('anonymous@site.com')
    password('anonymous')
  end

  factory(:photo) do
    description('Cool Pic')
    user_id(1)
    image Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/test_photo.jpg", "image/jpg")
  end
end
