class PostsController < ApplicationController
  def index
    @posts = Post.all #投稿表示用（今回は使っていない）
    # @events = Post.all #カレンダー表示用（一応分けておく方が良き）
    @blogs = Post.all
end

  def new
    @posts = Post.new
  end

  def result
    @blogs = Post.all
    @post = Post.order(:start_time)
  end

  def create
    posts = Post.new(posts_params)
    if posts.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @posts = Post.find(params[:id])
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    posts = Post.find(params[:id])
    if posts.update(posts_params)
      redirect_to :action => "show", :id => posts.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  private
  def posts_params
    params.require(:post).permit(:gamename , :score , :image, :start_time , :end_time , :title , :color , :day , :match)
  end
end
