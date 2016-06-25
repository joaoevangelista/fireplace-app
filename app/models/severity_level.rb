# frozen_string_literal: true
# :nodoc:
class SeverityLevel
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String
  field :color, type: String

  has_many :fires
end
