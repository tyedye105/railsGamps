class UsersController < ApplicationController
  def index
    @users = User.all
    @stuff = "ALL THE STUFF"
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.lat user.latitude
  marker.lng user.longitude
      end
  end
  def new
    @user = User.new()
  end
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render :new
      end
  end
  private

  def user_params
    params.require(:user).permit(:name, :address, :lattitude, :longitude)
  end
end
