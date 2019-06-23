# Write your code here. 
require 'pry'
def dictionary
    dictionary = {
    "hello" => "hi",
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
end

def word_substituter(tweet)
  new_array = []
  arr = tweet.split(" ")
    arr.map do |word|
      if dictionary.include?(word)
        new_array << dictionary[word]
         else
        new_array << word
      end
   end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[1..140]
  else
    tweet
  end
end
