class RelationshipsController < ApplicationController
  

  def create
    user = User.find(params[:id])
    
    if current_user.follow(user)
      flash[:notice] = 'ユーザーをフォローしました'
      redirect_back(fallback_location:root_path)
    else
      flash[:notice] = 'ユーザーのフォローに失敗しました'
      redirect_back(fallback_location:root_path)
    end
  end

  def destroy
    user = User.find(params[:id])
    
    if current_user.unfollow(user)
      flash[:notice] = 'ユーザーのフォローを解除しました'
      redirect_back(fallback_location:root_path)
    else
      flash[:notice] = 'ユーザーのフォロー解除に失敗しました'
      redirect_back(fallback_location:root_path)
    end
  end
  private
  def relationship_params
    params.require(:relationship).permit(:user_id,:follow_id)
  end

  
end
