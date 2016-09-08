class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = user.username
    @user_posts = user.posts
  end
end
