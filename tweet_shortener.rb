# Write your code here.
def dictionary
  dict = {hello: "hi",
  to: "2", two: "2", too: "2",
  :for => "4", four: "4",
  be: "b",
  you: "u",
  at: "@",
  :and => "&"}
end

def word_substituter(tweet)
  tweet = tweet.split
  for word in tweet
    if dictionary.keys.include?(word.to_sym)
    tweet.each_with_index { |word, index|
      tweet[index] = dictionary[word.to_sym]
    }
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    string = word_substituter(tweet)
    if string > 140
      string = string[0..137] + "..."
    else
      string
    end
  else
    tweet
  end
end
      




  