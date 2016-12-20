class HomeController < ApplicationController
  def index
    @reddit = Game.find_by(:name => 'Gaming').reddits.last(5)
    @streamers = Game.find_by(:name => 'Gaming').streamers.last(6)
    @headlines = Headline.last(5).reverse
    matches = Match.all
    @live_matches, @upcoming_matches, @completed_matches = [], [], []
    matches.each do |match|
      case match.status
      when "live"
        @live_matches << match
      when "upcoming"
        @upcoming_matches << match
      when "completed"
        @completed_matches << match
      else
        @upcoming_matches << match
      end
    end
    @live_matches.sort! {|a,b| a.time <=> b.time} if @live_matches.size > 1
    @upcoming_matches.sort! {|a,b| a.time <=> b.time} if @upcoming_matches.size > 1
    @completed_matches.sort! {|a,b| b.time <=> a.time} if @completed_matches.size > 1
  end
end
