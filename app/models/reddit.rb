class Reddit < ActiveRecord::Base
  belongs_to :game, dependent: :destroy
end
