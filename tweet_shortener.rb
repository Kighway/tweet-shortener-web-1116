def dictionary (word)
dictionary_hash  = { "hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"
}
word.capitalize == word ? dictionary_hash.include?(word.downcase) ? dictionary_hash[word.downcase].capitalize : word : dictionary_hash.include?(word) ? dictionary_hash[word] : word
end

def word_substituter (tweet)
  tweet.split(" ").collect { |word| dictionary(word) }.join(" ")
end

def bulk_tweet_shortener (array_tweets)
#   Write a method, bulk_tweet_shortener that takes in an array of tweets, iterates over them, shortens them, and puts out the results to the screen.
# Hint: You already wrote a method that shortens tweets. Use it!
# Hint: Remember that you can puts out the result of a method by putting puts in front of the method call.
  array_tweets.each do |tweet|
    puts word_substituter (tweet)
  end
end

def selective_tweet_shortener (tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator (tweet)
  tweet.length > 140 ? tweet.slice(0,137) + "..." : tweet
end
