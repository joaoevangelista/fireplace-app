# frozen_string_literal: true
# :nodoc:
class SeverityLevel
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  validates :name, :color, presence: true
  validates :color, color: true

  field :name, type: String
  field :color, type: String

  paginates_per 20

  has_many :fires, dependent: :nullify
end
