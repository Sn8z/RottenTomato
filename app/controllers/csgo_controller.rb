class CsgoController < ApplicationController
    def index
        @news = Game.find_by(:name => 'Counterstrike Global Offensive').news.last(5)
        @reddit = Game.find_by(:name => 'Counterstrike Global Offensive').reddits.last(5)
        @streamers = Game.find_by(:name => 'Counterstrike Global Offensive').streamers.last(6)
        @youtube = Game.find_by(:name => 'Counterstrike Global Offensive').youtubes.last(3).reverse
        @guides = Game.find_by(:name => 'Counterstrike Global Offensive').guides.last(5).reverse
    end
end
