class IncidentType
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String

  paginates_per 20

  has_many :incidents
end
