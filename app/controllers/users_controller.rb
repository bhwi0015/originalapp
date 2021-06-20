class UsersController < ApplicationController
  before_action :set_user, only: [:show, :followings, :followers]

  def followings
  @users = @user.followings.all
  respond_to do |format|
    format.js
  end
end

def followers
  @users = @user.followers.all
  respond_to do |format|
    format.js
  end
end

private

  def set_user
    @user = User.find(params[:id])
  end

  def move_to_index
    set_user
    unless current_user.id == @user.id
    end
  end
end
