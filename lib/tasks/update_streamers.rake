task :update_streamers => :environment do
  require 'open-uri'
  require 'rss'

  #Gaming
  streamers = JSON.parse(open("https://api.twitch.tv/kraken/streams?limit=6", "Client-ID" => ENV.fetch("TWITCH_API_KEY")).read)
  streamers["streams"].each do |streamer|
    gaming_streamer = Streamer.new
    gaming_streamer.logo_src = streamer["preview"]["medium"]
    gaming_streamer.url = streamer["channel"]["url"]
    gaming_streamer.name = streamer["channel"]["display_name"]
    gaming_streamer.description = streamer["channel"]["status"].size > 40 ? streamer["channel"]["status"][0..39] + "..." : streamer["channel"]["status"]
    gaming_streamer.viewers = streamer["viewers"]
    gaming_streamer.game_id = Game.find_by(:name => 'Gaming').id;
    gaming_streamer.save!
  end


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
    dota_streamer.game_id = Game.find_by(:name => 'Dota 2').id;
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
    csgo_streamer.game_id = Game.find_by(:name => 'Counterstrike Global Offensive').id;
    csgo_streamer.save!
  end
end
