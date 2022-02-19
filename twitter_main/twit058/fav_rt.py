import tweepy
from time import sleep
from credentials import *
from config import QUERY, FOLLOW, LIKE, SLEEP_TIME

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

print("NUMBER 058")
print("Bot Settings")
print("Like tweets :", LIKE)
print("Follow users :", FOLLOW)
print("Current hashtag : " + QUERY

)

for tweet in tweepy.Cursor(api.search, q=QUERY).items():
    try:
        print('\nTweet by: @' + tweet.user.screen_name)
        #tweet.retweet()
        #print('Retweeted the tweet')
        
        # Favorite the tweet
        if LIKE:
            tweet.favorite()
            print('Favorited the tweet')

        # Follow the user who tweeted
        #check that bot is not already following the user
        if FOLLOW:
            if not tweet.user.following:
                tweet.user.follow()
                print('Followed the user')

        sleep(SLEEP_TIME)

    except tweepy.TweepError as e:
        print(e.reason)

    except StopIteration:
        break

print("test hello")