class DotaController < ApplicationController
  def index
    api = Dota.api
    @live_matches = []
    api.live_matches.each do |match|
      if match.league_tier.eql?("Professional")
        @live_matches.push(match)
      end
    end
  end
end
