class RelationshipsController < ApplicationController
  
  def follow
    current_user.follow(params[:id])
    redirect_back(fallback_location: root_path)
  end
  
  def unfollow
    current_user.unfollow(params[:id])
    redirect_back(fallback_location: root_path)
  end
  
  def index
    @user = User.find(params[:id])
    @follower = @user.follower
  end
end
