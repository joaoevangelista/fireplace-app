# frozen_string_literal: true
class Role
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String

  has_many :users
end
