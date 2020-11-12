10.times do |n|
  User.create!(
    name: Faker::Name.name,
    avatar: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    google_user_id: Faker::IDNumber.chilean_id,
    twitter_user_id: Faker::Twitter.user[:id]
  )
end