task :update_news => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2
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
