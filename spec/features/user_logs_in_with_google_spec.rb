require 'rails_helper'

  def stub_omniauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({

      })
  end

describe "user logs in" do
  it "using google oauth2" do
    stub_omniauth
    visit root_path
    expect(page).to have_link("Sign in with Google")
    click_link "Sign in with Google"
    expect(page).to have_content("Zac Palmquist")
    expect(page).to have_link("Logout")
  end
end
