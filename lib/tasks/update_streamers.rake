task :update_streamers => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2
  #DotaStreamers
  streamers = JSON.parse(open("https://api.twitch.tv/kraken/streams?game=DotA%202&limit=6", "Client-ID" => ENV.fetch("TWITCH_API_KEY")).read)
  streamers["streams"].each do |streamer|
    dota_streamer = Streamer.new
    dota_streamer.url = streamer["channel"]["url"]
    dota_streamer.logo_src = streamer["preview"]["medium"]
    dota_streamer.name = streamer["channel"]["display_name"]
    dota_streamer.description = streamer["channel"]["status"].size > 40 ? streamer["channel"]["status"][0..39] + "..." : streamer["channel"]["status"]
    dota_streamer.viewers = streamer["viewers"]
    dota_streamer.game_id = 1;
    dota_streamer.save!
  end

  #CsGo
  #CsgoStreamers
  streamers = JSON.parse(open("https://api.twitch.tv/kraken/streams?game=Counter-Strike%3A%20Global%20Offensive&limit=6", "Client-ID" => ENV.fetch("TWITCH_API_KEY")).read)
  streamers["streams"].each do |streamer|
    csgo_streamer = Streamer.new
    csgo_streamer.url = streamer["channel"]["url"]
    csgo_streamer.logo_src = streamer["preview"]["medium"]
    csgo_streamer.name = streamer["channel"]["display_name"]
    csgo_streamer.description = streamer["channel"]["status"].size > 40 ? streamer["channel"]["status"][0..39] + "..." : streamer["channel"]["status"]
    csgo_streamer.viewers = streamer["viewers"]
    csgo_streamer.game_id = 2;
    csgo_streamer.save!
  end
end
