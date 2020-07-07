class LikesController < ApplicationController

  def create
    @mandala=Mandala.find_by(id:params[:mandala_id])
    @like = current_user.likes.create(mandala_id: params[:mandala_id])
    
  end

  def destroy
    @mandala=Mandala.find_by(id:params[:mandala_id])
    @like = Like.find_by(mandala_id: params[:mandala_id], user_id: current_user.id)
    @like.destroy
    
  end
end
