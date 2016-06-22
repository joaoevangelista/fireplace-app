class Incident
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :action_taken, :type => String
  field :location, :type => Geo::Point
  field :description, :type => Text
  field :open, :type => Boolean
  belongs_to :incident_type
  belongs_to :user
end
