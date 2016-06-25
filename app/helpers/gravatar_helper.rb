# frozen_string_literal: true
# Gravatar images helper
module GravatarHelper
  def gravatar(email, size = 200)
    hash = Digest::MD5::hexdigest email
    "http://gravatar.com/avatar/#{hash}.png?s=#{size}"
  end
end
