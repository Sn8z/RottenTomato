module ApplicationHelper
  def time_diff(start_time, end_time)
    seconds_diff = (start_time - end_time).to_i.abs

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff

    "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end

  def get_image(game)
    case game
    when "Dota 2"
      "game/dota-logo.png"
    when "Counterstrike Global Offensive"
      "game/csgo-logo.png"
    when "Overwatch"
      "game/overwatch-logo.png"
    when "World of Warcraft"
      "game/wow-logo.png"
    else
      "game/error-icon.png"
    end
  end
end
