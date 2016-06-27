module RolesHelper

  def current_user_is(role)
    return false if role == nil || !current_user
    return role.downcase.equal? current_user.role.name.downcase
  end

end
