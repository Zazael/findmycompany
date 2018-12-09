require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  it "redirects to the home page upon logout" do
    delete :destroy
    expect redirect_to root_url
  end

  it "redirects to the login upon wrong login" do
    user = FactoryBot.create(:user)
    params = {
        email: user.email,
        password: "fakepass",
    }
    post :create, session: params
    expect redirect_to login_url
  end

end
