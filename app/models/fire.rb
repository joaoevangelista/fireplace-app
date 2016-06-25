# :nodoc:
class Fire
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String
  field :location, type: Geo::Point
  field :description, type: String
  field :is_extinguished, type: Boolean

  paginates_per 20

  belongs_to :user
end
