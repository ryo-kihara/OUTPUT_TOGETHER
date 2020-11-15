100.times do
    user_id = rand(1..10)
    contents = Faker::Movies::StarWars.droid
    Tweet.create!(user_id: user_id,
                 contents: contents,
                 )
  end