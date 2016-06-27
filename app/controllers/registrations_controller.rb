# frozen_string_literal: true
# Override of Devise controller to customize the permited fields
class RegistrationsController < Devise::RegistrationsController
  # only master users can execute those actions
  before_action :master?, only: [:new, :create, :destroy]

  private

  def sign_up_params
    params.require(:user).permit(:email, :name, :password,
                                 :password_confirmation, :station, :role_id)
  end

  def account_update_params
    params.require(:user).permit(:email, :name, :password,
                                 :password_confirmation, :station, :role_id)
  end

  def master?
    return false unless current_user
    current_user.role.name.downcase.equal? 'master'
  end
end
