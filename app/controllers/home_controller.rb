class HomeController < ApplicationController
  def index
    @news = Game.find_by(:name => 'Gaming').news.last(5)
    @reddit = Game.find_by(:name => 'Gaming').reddits.last(5)
    @streamers = Game.find_by(:name => 'Gaming').streamers.last(6)
    @youtube = Youtube.last(3).reverse
  end
end
