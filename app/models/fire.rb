class Fire
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :location, :type => Geo::Point
  field :description, :type => String

  belongs_to :user
end
