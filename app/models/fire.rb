class Fire
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :location, :type => Geojson
  field :description, :type => String

  belongs_to :user
end
