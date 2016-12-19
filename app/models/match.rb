class Match < ActiveRecord::Base
  belongs_to :game
  after_initialize :init

  def init
    self.status ||= "upcoming"
  end
end
