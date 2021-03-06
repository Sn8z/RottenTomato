require "administrate/base_dashboard"

class StreamerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    game: Field::BelongsTo,
    id: Field::Number,
    url: Field::String,
    logo_src: Field::String,
    name: Field::String,
    description: Field::String,
    viewers: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :game,
    :id,
    :url,
    :logo_src,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :game,
    :id,
    :url,
    :logo_src,
    :name,
    :description,
    :viewers,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :game,
    :url,
    :logo_src,
    :name,
    :description,
    :viewers,
  ].freeze

  # Overwrite this method to customize how streamers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(streamer)
  #   "Streamer ##{streamer.id}"
  # end
end
