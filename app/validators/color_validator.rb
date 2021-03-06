# frozen_string_literal: true
# Based on GitLab's implementation
# Custom validator for web color codes. It requires the leading hash symbol and
# will accept RGB triplet or hexadecimal formats.
class ColorValidator < ActiveModel::EachValidator
  PATTERN = /\A\#[0-9A-Fa-f]{3}{1,2}+\Z/

  def validate_each(record, attribute, value)
    return true if value =~ PATTERN # <- guard clause
    record.errors.add(attribute, 'must be a valid color code')
  end
end
