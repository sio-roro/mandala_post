class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts=Post.all.order(id: "DESC")
  end

  def new
    @post=Post.new
  end

def create
  @post=Post.new(post_params)
  @post.user_id=current_user.id
  if @post.save
    flash[:notice]="投稿されました"
    redirect_to :action => "index"
  else
    render("posts/new")
  end
end

def show
  @post=Post.find(params[:id])
  @mandalas=Mandala.where(post_id:@post.id).order(id: "DESC")
end

def edit
  @post=Post.find(params[:id])
end

def update
  @post=Post.find(params[:id])
  if @post.update(post_params)
    flash[:notice]="投稿が編集されました"
    redirect_to :action => "show", :id => @post.id
  else
    render("posts/edit")
  end
end

def destroy
  @post=Post.find(params[:id])
  @post.destroy
  Post.where(post_id:@post.id).destroy_all
  flash[:notice]="投稿が削除されました"
  redirect_to action: :index
end

def expand
  if Post.find_by(theme:params[:theme],post_id:params[:post_id])
    flash[:notice]="この投稿は拡張済みです"
    redirect_back(fallback_location:root_path)
  else  
    @post=Post.new
    @post.post_id=params[:post_id]
    @post.theme=params[:theme]
    @post.user_id=current_user.id
    if @post.save
      flash[:notice]="マンダラが拡張されました"
      redirect_to controller:'posts',action:'index'
    else 
      redirect_back(fallback_location:root_path)
    end
  end
end


private
  def post_params
    params.require(:post).permit(:theme,:comment)
  end

end
