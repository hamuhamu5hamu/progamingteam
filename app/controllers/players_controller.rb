class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @players = Player.new
  end

  def create
    players = Player.new(players_params)
    if players.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @players = Player.find(params[:id])

    @player = Player.select(:genre).distinct
    @member = Player.all
    @blogs = Post.all
    @post = Post.all
    department = Player.select(:genre).distinct
  end

  def edit
    @players = Player.find(params[:id])
  end

  def update
    players = Player.find(params[:id])
    if players.update(players_params)
      redirect_to :action => "show", :id => players.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to action: :index
  end

  private
  def players_params
    params.require(:player).permit(:name , :genre , :twitter , :youtube , :twich , :image , :montage , :achievements)
  end
end
