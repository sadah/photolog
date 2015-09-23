class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_hash)
    provider   = auth_hash[:provider]
    uid        = auth_hash[:uid]
    nickname   = auth_hash[:info][:nickname]
    avatar_url = auth_hash[:info][:image]

    User.find_or_create_by(provider: provider, uid: uid) do |user|
      user.nickname = nickname
      user.avatar_url = avatar_url
    end
  end

end
