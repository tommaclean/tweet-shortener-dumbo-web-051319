def word_substituter(tweet)
    dictionary = {
                    "hello" => "hi",
                    "to" => "2",
                    "two" => "2",
                    "too" => "2",
                    "For" => "4",
                    "for" => "4",
                    "four" => "4",
                    "be" => "b",
                    "you" => "u",
                    "at" => "@",
                    "and" => "&"
          }
  new_arr = []
  tweet.split(" ").each do |word|
      if dictionary.keys.include?(word.downcase)
        new_arr << dictionary[word]
      else
        new_arr << word
      end
  end
      new_arr.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
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
    word_substituter(tweet)[0..136] + ("...")
  else
    word_substituter(tweet)
  end
end
