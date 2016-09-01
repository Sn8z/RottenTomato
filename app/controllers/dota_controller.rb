class DotaController < ApplicationController
  def index

    require 'open-uri'
    @highlights = []
    JSON.parse(open("https://api.twitch.tv/kraken/videos/top?game=Dota+2&period=month&limit=100").read)["videos"].each do |highlight|
      if highlight["language"].eql?("en")
        @highlights.push(highlight)
      end
    end

    api = Dota.api
    @live_matches = []
    api.live_matches.each do |match|
      if match.league_tier.eql?("Professional")
        @live_matches.push(match)
      end
    end
  end
end
