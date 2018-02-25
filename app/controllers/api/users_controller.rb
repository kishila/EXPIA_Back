class Api::UsersController < ApplicationController
  def show
    raise ArgumentError, 'invalid params' if params[:name].blank?
    @user = User.find_by(name: params[:name])

    render json: {
      name: @user.name,
      profile_url: @user.profile_image.url
    }
  end
end
