module ApplicationHelper
  def get_dota_league(id)
    api = Dota.api
    api.leagues.each do |league|
      if league.id == id
        return [league.name, league.url]
      end
    end
  end
end
