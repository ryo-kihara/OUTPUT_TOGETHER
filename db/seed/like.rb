80.times do |n|
    Like.create!(
        user_id: rand(1..10),
        tweet_id: Faker::Number.unique.number(digits: 2)
    )
end

#==========================================================================================
#最初のコード
=begin
300.times do |n|
    Like.create!(
        user_id: Faker::Number.unique.between(from: 1, to: 10),
        tweet_id: Faker::Number.unique.between(from: 1, to: 100)
    )
end
=end

