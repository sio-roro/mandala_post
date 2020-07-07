class MandalasController < ApplicationController
  before_action :authenticate_user!
  def new
    @post=Post.find(params[:id])
    @mandala=Mandala.new
  end

  def create
    @post=Post.find(params[:id])
    @mandala=Mandala.new(mandala_params)
    @mandala.post_id=@post.id
    @mandala.user_id=current_user.id
    if @mandala.save
      flash[:notice]="マンダラが作成されました"
      redirect_to controller:"posts", action:"show",id:@post.id
    else 
      render("mandalas/new")
    end
  end

 def destroy
  Mandala.find_by(id:params[:id]).destroy
  
  flash[:notice]="マンダラが削除されました"
  redirect_back(fallback_location:root_path)
 end 
  
  private
  def mandala_params
    params.require(:mandala).permit(:one,:two,:three,:four,:five,:six,:seven,:eight)
  end
end
