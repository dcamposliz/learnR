
# load twitteR
library(RCurl)
library(bitops)
library(rjson)
library(twitteR)

# get recent public tweets
public_tweets = publicTimeline()