100.times do
  Tweet.create!(
    user_id: rand(1..10),
    contents: Faker::Movies::StarWars.droid,
  )
end
