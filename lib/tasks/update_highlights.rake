task :update_highlights => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2

  banned_streamers = ["morphia666"]
  #DotaHighlights
  highlights = JSON.parse(open("https://api.twitch.tv/kraken/videos/top?game=Dota+2&period=month&limit=100").read)["videos"]
  highlights.each do |highlight|
    if highlight["language"].eql?("en") and not banned_streamers.include?(highlight["channel"]["name"])
      dota_highlight = DotaHighlight.new
      dota_highlight.url = highlight["url"]
      dota_highlight.img = highlight["preview"]
      dota_highlight.title = highlight["title"]
      dota_highlight.save!
    end
  end
end
