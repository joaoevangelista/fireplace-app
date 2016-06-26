# frozen_string_literal: true
# :nodoc:
class Incident
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  validates :action_taken, :location, :description, :incident_type, :user,
            presence: true

  field :action_taken, type: String
  field :location, type: Geo::Point
  field :description, type: Text
  field :open, type: Boolean

  paginates_per 20

  belongs_to :incident_type
  belongs_to :user
end
