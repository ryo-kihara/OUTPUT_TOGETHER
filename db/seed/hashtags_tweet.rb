100.times do |n|
  randnum = rand(1..5)
  HashtagsTweet.create!(
    tweet_id: n+1,
    hashtag_id: randnum
  )
  if rand(0..1) == 1
    HashtagsTweet.create!(
      tweet_id: n+1,
      hashtag_id: randnum + 1
    )
    if rand(0..1) == 1
      HashtagsTweet.create!(
        tweet_id: n+1,
        hashtag_id: randnum + 2
      )
    end
  end
end
