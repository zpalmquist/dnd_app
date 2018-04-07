require 'rails_helper'

describe User, type: :model do
  it "creates or updates itself from an oauth hash" do
    auth = {
          provider: "google",
          uid: "12345678910",
          info: {
            name: "Zac Palmquist",
            email: "email@test.com"
          },
          credentials: {
            oauth_token: "tokentoken",
            expires_at: DateTime.now
          }
    }
    User.from_omniauth(auth)
    new_user = User.first
    expect(new_user.provider).to eq("google")
    expect(new_user.uid).to eq("12345678910")
    expect(new_user.name).to eq("Zac Palmquist")
    expect(new_user.oauth_token).to eq("tokentoken")
    expect(new_user.oauth_expires_at).to eq(auth[:credentials][:expires_at])
  end
end
