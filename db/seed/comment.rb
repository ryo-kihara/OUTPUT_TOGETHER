100.times do |n|
    Comment.create!(
        user_id: rand(1..10),
        tweet_id: rand(1..50),
        contents: Faker::Hacker.say_something_smart     
    )
end
