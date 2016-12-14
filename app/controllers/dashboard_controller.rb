class DashboardController < ApplicationController
  before_filter :is_admin?
  def index
    @users = User.all
    @games = Game.all
    @headlines = Headline.all
  end
end
