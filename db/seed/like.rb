80.times do 
  Like.create!(
    user_id: rand(1..10),
    tweet_id: Faker::Number.unique.number(digits: 2)
  )
end
