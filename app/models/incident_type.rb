class IncidentType
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
end
