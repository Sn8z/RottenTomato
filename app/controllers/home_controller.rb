class HomeController < ApplicationController
  def index
    @reddit = Game.find_by(:name => 'Gaming').reddits.last(5)
    @streamers = Game.find_by(:name => 'Gaming').streamers.last(6)
    @headlines = Headline.last(3).reverse
  end
end
