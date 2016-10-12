class Game < ActiveRecord::Base
  has_many :news, dependent: :destroy
  has_many :guides, dependent: :destroy
  has_many :reddits, dependent: :destroy
  has_many :streamers, dependent: :destroy
  has_many :youtubes, dependent: :destroy
  has_many :headlines, dependent: :destroy
  has_many :arts, dependent: :destroy
end
