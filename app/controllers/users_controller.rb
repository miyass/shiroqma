class UsersController < ApplicationController

  before_action :move_to_index

  def show
    user = User.find(params[:id])
    @username = user.username
    @user_posts = user.posts
    @user_image = user.image
  end



  private
  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
