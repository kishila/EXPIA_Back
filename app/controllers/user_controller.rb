class UserController < ApplicationController
  def update
    raise ArgumentError, 'invalid params' if params[:name].blank? || params[:profile].blank?

    user = User.find_or_create_by(name: params[:name])
    user.profile_image = params[:profile]
    user.save!

    render json: {
      name: user.name,
      profile_url: user.profile_image.url
    }
  end
end
