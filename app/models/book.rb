class Book < ApplicationRecord
  has_rich_text :description

  include MeiliSearch::Rails
  extend Pagy::Meilisearch

  meilisearch do
    attribute :title, :author, :genre, :publisher, :description
    searchable_attributes [:title, :author, :genre, :publisher, :description]
    filterable_attributes [:genre]

    sortable_attributes [:created_at, :updated_at]

    attribute :description do
      description.body&.to_plain_text
    end
  end
end
