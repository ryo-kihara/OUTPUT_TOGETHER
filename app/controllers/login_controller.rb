class LoginController < ApplicationController
  def login; end

  def register; end

  # ログイン処理
  # @param string oauth_token
  # @param string oauth_verifier
  # @param string provider
  def twitter
    user_data = request.env['omniauth.auth']
    user = User.find_by(twitter_user_id: user_data[:uid])

    unless user
      User.new(
        twitter_user_id: user_data[:uid],
        name: user_data[:info][:name],
        avatar: user_data[:info][:image]
      ).save
    end
    redirect_to '/'
  end
end
