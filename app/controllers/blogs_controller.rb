class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def home
    @player_genre = []
    @player = Player.select(:genre).distinct
    @player.each do |g|
      gen = []
      gen.push(g.genre)
      gen.push(Player.where(genre: g.genre).length)
      @player_genre.push(gen)
    end
    @member = Player.all
    @blogs = Post.all
    @post = Post.order(:start_time)
    department = Player.select(:genre).distinct
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    Blog.create(blog_parameter)
    redirect_to blogs_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice:"削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time)
  end

end
