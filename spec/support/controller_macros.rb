module ControllerMacros
  def login_user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
       maybe_user = User.where(email: 'john.doe@fireplace.com').first
      if !maybe_user
        user = FactoryGirl.create(:user)
      else
        user = maybe_user
      end
      sign_in user
    end
  end
end
