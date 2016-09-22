task :update_news => :environment do
  require 'open-uri'
  require 'rss'
  #DotA 2
  #DotaReddit
  reddit = JSON.parse(open("https://www.reddit.com/r/dota2/hot/.json?limit=5", "User-Agent" => "Dota2 Rails").read)["data"]["children"]
  reddit.each do |post|
    dota_reddit = Reddit.new
    dota_reddit.url = "https://www.reddit.com" + post["data"]["permalink"]
    dota_reddit.title = post["data"]["title"]
    dota_reddit.upvotes = post["data"]["ups"]
    dota_reddit.comments = post["data"]["num_comments"]
    dota_reddit.game_id = 1;
    dota_reddit.save!
  end

  #DotaNews
  rssNews = RSS::Parser.parse(open('http://feeds.thescoreesports.com/dota2.rss').read, false).items[0..4]
  rssNews.each do |news|
    dota_news = News.new
    dota_news.url = news.link
    dota_news.title = news.title
    dota_news.game_id = 1;
    dota_news.save!
  end

  #CsGo
  #CsgoReddit
  reddit = JSON.parse(open("https://www.reddit.com/r/GlobalOffensive/hot/.json?limit=5", "User-Agent" => "Csgo Rails").read)["data"]["children"]
  reddit.each do |post|
    csgo_reddit = Reddit.new
    csgo_reddit.url = "https://www.reddit.com" + post["data"]["permalink"]
    csgo_reddit.title = post["data"]["title"]
    csgo_reddit.upvotes = post["data"]["ups"]
    csgo_reddit.comments = post["data"]["num_comments"]
    csgo_reddit.game_id = 2;
    csgo_reddit.save!
  end

  #DotaNews
  rssNews = RSS::Parser.parse(open('http://feeds.thescoreesports.com/csgo.rss').read, false).items[0..4]
  rssNews.each do |news|
    csgo_news = News.new
    csgo_news.url = news.link
    csgo_news.title = news.title
    csgo_news.game_id = 2;
    csgo_news.save!
  end
end
