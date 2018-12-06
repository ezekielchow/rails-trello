class Api::App::V1::MobileController < ApplicationController

  skip_before_action :verify_authenticity_token

  def login
    logger.debug params

      user = User.find_by(email: params[:email])
      if user && user.valid_password?(params[:password])
        render json: { token: user.authentication_token }
      else
        render json: { errors: ["Invalid email or password"] }
      end
  end
end