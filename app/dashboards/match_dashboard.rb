require "administrate/base_dashboard"

class MatchDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    game: Field::BelongsTo,
    id: Field::Number,
    team1: Field::String,
    team1_score: Field::String,
    team2: Field::String,
    team2_score: Field::String,
    tournament: Field::String,
    twitch: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    time: Field::DateTime,
    best_of: Field::Number,
    status: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :game,
    :id,
    :team1,
    :team1_score,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :game,
    :id,
    :team1,
    :team1_score,
    :team2,
    :team2_score,
    :tournament,
    :twitch,
    :created_at,
    :updated_at,
    :time,
    :best_of,
    :status,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :game,
    :team1,
    :team1_score,
    :team2,
    :team2_score,
    :tournament,
    :twitch,
    :time,
    :best_of,
    :status,
  ].freeze

  # Overwrite this method to customize how matches are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(match)
  #   "Match ##{match.id}"
  # end
end
