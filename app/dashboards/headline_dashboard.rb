require "administrate/base_dashboard"

class HeadlineDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    game: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::String,
    img: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    url: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :game,
    :id,
    :title,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :game,
    :id,
    :title,
    :description,
    :img,
    :created_at,
    :updated_at,
    :url,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :game,
    :title,
    :description,
    :img,
    :url,
  ].freeze

  # Overwrite this method to customize how headlines are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(headline)
  #   "Headline ##{headline.id}"
  # end
end
