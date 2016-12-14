class DotaController < ApplicationController
  def index
    @news = Game.find_by(:name => 'Dota 2').news.last(5)
    @reddit = Game.find_by(:name => 'Dota 2').reddits.last(5)
    @streamers = Game.find_by(:name => 'Dota 2').streamers.last(6)
    @youtube = Game.find_by(:name => 'Dota 2').youtubes.last(3).reverse
    @guides = Game.find_by(:name => 'Dota 2').guides.last(5).reverse
    @headlines = Game.find_by(:name => 'Dota 2').headlines.last(4).reverse
  end
end
