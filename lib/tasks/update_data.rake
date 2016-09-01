task :update_data => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2
  #DotaStreamers
  streamers = JSON.parse(open("https://api.twitch.tv/kraken/streams?game=DotA%202&limit=9").read)
  streamers["streams"].each do |streamer|
    dota_streamer = DotaStreamer.new
    dota_streamer.url = streamer["channel"]["url"]
    dota_streamer.logo_src = streamer["channel"]["logo"]
    dota_streamer.name = streamer["channel"]["display_name"]
    dota_streamer.description = streamer["channel"]["status"].size > 40 ? streamer["channel"]["status"][0..39] + "..." : streamer["channel"]["status"]
    dota_streamer.viewers = streamer["viewers"]
    dota_streamer.save!
  end
  #DotaReddit
  reddit = JSON.parse(open("https://www.reddit.com/r/dota2/hot/.json?limit=5", "User-Agent" => "Dota2 Rails").read)["data"]["children"]
  reddit.each do |post|
    dota_reddit = DotaReddit.new
    dota_reddit.url = "https://www.reddit.com" + post["data"]["permalink"]
    dota_reddit.title = post["data"]["title"]
    dota_reddit.upvotes = post["data"]["ups"]
    dota_reddit.comments = post["data"]["num_comments"]
    dota_reddit.save!
  end

  #DotaNews
  rssNews = RSS::Parser.parse(open('http://feeds.thescoreesports.com/dota2.rss').read, false).items[0..4]
  rssNews.each do |news|
    dota_news = DotaNews.new
    dota_news.url = news.link
    dota_news.title = news.title
    dota_news.save!
  end
end
