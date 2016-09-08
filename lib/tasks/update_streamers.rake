task :update_streamers => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2
  #DotaStreamers
  streamers = JSON.parse(open("https://api.twitch.tv/kraken/streams?game=DotA%202&limit=6").read)
  streamers["streams"].each do |streamer|
    dota_streamer = DotaStreamer.new
    dota_streamer.url = streamer["channel"]["url"]
    dota_streamer.logo_src = streamer["preview"]["medium"]
    dota_streamer.name = streamer["channel"]["display_name"]
    dota_streamer.description = streamer["channel"]["status"].size > 40 ? streamer["channel"]["status"][0..39] + "..." : streamer["channel"]["status"]
    dota_streamer.viewers = streamer["viewers"]
    dota_streamer.save!
  end
end
