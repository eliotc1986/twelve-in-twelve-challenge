class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @movies = Movie.where(user_id: @user.id).order("created_at DESC")
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
  end
end
