class Game < ActiveRecord::Base
  has_many :news
  has_many :guides
  has_many :reddits
  has_many :streamers
  has_many :youtubes
  has_many :headlines
end
