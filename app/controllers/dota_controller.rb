class DotaController < ApplicationController
  def index

  end

  def matches
    api = Dota.api
    live_matches_html = ""
    live_matches = []
    api.live_matches.each do |match|
      if match.league_tier.eql?("Professional")
        live_matches.push(match)
      end
    end

    if live_matches.empty?
      live_matches_html = "<hr><p style='color:white;'>No matches</p>"
    else
      live_matches_html = "<table class='table' style='width:100%;'>"
      live_matches.each do |match|
        league = get_dota_league(match.league_id)
        live_matches_html += "<tr>
            <td width='40%' align='left'>
                <b style='color: white;'>#{match.radiant.name}</b><br>
                <a href='#{league[1]}' target='_blank'>#{league[0]}</a>
            <td width='20%' align='center'>
               <i style='color: white;'>Bo
               #{match.series_type * 2 + 1}</i><br>
                <b style='color: white;'>
                (#{match.radiant.series_wins}
                -
                #{match.dire.series_wins})</b>
              </td>
              <td width='40%' align='right'>
              <b style='color: white;'>#{match.dire.name}</b><br>
                <a href='http://www.trackdota.com/matches/#{match.id}' target='_blank'>
                  <div class='img-trackdota'></div>
                </a>
            </td>
        </tr>"
      end
      live_matches_html += "</table>"
    end

    render html: live_matches_html.html_safe
  end

  private
  def get_dota_league(id)
    api = Dota.api
    api.leagues.each do |league|
      if league.id == id
        return [league.name, league.url]
      end
    end
  end
end
