# frozen_string_literal: true
# Override of Devise controller to customize the permited fields
class RegistrationsController < Devise::RegistrationsController
  # Override params of Deivse
  private

  def sign_up_params
    params.require(:user).permit(:email, :name, :password,
                                 :password_confirmation, :station)
  end

  def account_update_params
    params.require(:user).permit(:email, :name, :password,
                                 :password_confirmation, :station)
  end
end
