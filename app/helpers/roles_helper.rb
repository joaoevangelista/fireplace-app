# frozen_string_literal: true
module RolesHelper
  def current_user_is(role)
    return false if role.nil? || !current_user
    role.downcase.eql? current_user.role.try(:name).try(:downcase)
  end
end
