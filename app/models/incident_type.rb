# frozen_string_literal: true
# :nodoc:
class IncidentType
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  validates :name, presence: true

  field :name, type: String

  paginates_per 20

  has_many :incidents
end
