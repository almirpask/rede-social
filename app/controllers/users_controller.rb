class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:show, :following, :followers]

  def show
    @post = @user.posts
    @following = @user.following_users.limit(5)
    @followers = @user.followers_by_type("User").limit(5)
  end

  def followers
    @followers = @user.following_users
  end

  def following
    @following = @user.following_users
  end

  def search
    @user = current_user
    @query = User.ransak(params[:q])
    @user = @query.result(distinct: true)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
