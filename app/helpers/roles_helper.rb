# frozen_string_literal: true
module RolesHelper
  def current_user_is(role)
    return false if role.nil? || !current_user
    role.downcase.equal? current_user.role.name.downcase
  end
end
