require 'rails_helper'

RSpec.feature "Logins", type: :feature do

  scenario "User successfully logs in" do
    user = FactoryBot.create(:user)
    visit login_path
    fill_in "session[email]", :with => user.email
    fill_in "session[password]", :with => user.password_digest
    click_button "Log in"
    expect(current_path).to eql(root_path)
  end

end
