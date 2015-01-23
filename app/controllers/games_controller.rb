class GamesController < ApplicationController

  def index
    if params[:search]
      @games = Game.search(params[:search])
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path, notice: "#{@game.title} was submitted successfully!"
    else
      render :new
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  protected

  def game_params
    params.require(:game).permit(
      :title, :release_date, :developer, :image, :description
    )
  end

end
