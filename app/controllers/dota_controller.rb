class DotaController < ApplicationController

  def index
    require 'open-uri'
    streamers = open("https://api.twitch.tv/kraken/streams?game=DotA%202&limit=8").read
    @streamersJSON = JSON.parse(streamers)
    reddit = open("https://www.reddit.com/r/dota2/hot/.json?limit=5", "User-Agent" => "Dota2 Rails").read
    @redditJSON = JSON.parse(reddit)["data"]["children"]
    require 'rss'
    @rssNews = RSS::Parser.parse(open('http://feeds.thescoreesports.com/dota2.rss').read, false).items[0..5]
  end
end
