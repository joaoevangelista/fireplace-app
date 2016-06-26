# frozen_string_literal: true
# :nodoc:
class Fire
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  validates :name, :location, :description, :is_extinguished,
            :user, :severity_level, presence: true

  field :name, type: String
  field :location, type: Geo::Point
  field :description, type: String
  field :is_extinguished, type: Boolean

  paginates_per 20

  belongs_to :user
  belongs_to :severity_level
end
