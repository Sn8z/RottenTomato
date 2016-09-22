class Streamer < ActiveRecord::Base
  belongs_to :game, dependent: :destroy
end
