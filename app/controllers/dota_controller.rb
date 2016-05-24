class DotaController < ApplicationController
  def index
    require 'open-uri'
    streamers = open("https://api.twitch.tv/kraken/streams?game=DotA%202&limit=8").read
    @streamersJSON = JSON.parse(streamers)
    require 'rss'
    @rssNews = RSS::Parser.parse(open('http://feeds.thescoreesports.com/dota2.rss').read, false).items[0..4]
  end
end
