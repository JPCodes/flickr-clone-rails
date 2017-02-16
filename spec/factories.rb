FactoryGirl.define do
  factory :user, class: User do
    name('anon')
    sequence(:email){|n| "user#{n}@factory.com" }
    password('anonymous')
  end

  factory :photo, class: Photo do
    user
    description('Cool Pic')
    image Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/test_photo.jpg", "image/jpg")
  end

  factory :comment, class: Comment do
    user
    photo
    content('something')
  end
end
