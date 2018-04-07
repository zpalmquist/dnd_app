class User < ActiveRecord::Base
  validates_presence_of :provider, :uid, :name, :oauth_token, :oauth_expires_at
  has_many :characters
  
  def self.from_omniauth(auth)
    where(provider: auth[:provider], uid: auth[:uid]).first_or_initialize.tap do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
      user.email = auth[:info][:email]
      user.name = auth[:info][:name]
      user.oauth_token = auth[:credentials][:oauth_token]
      user.oauth_expires_at = Time.at(auth[:credentials][:expires_at])
      user.save!
    end
  end
end
