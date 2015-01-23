class ReviewsController < ApplicationController

  before_filter :load_game
  before_filter :restrict_access

  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.build
  end

  def create
    @game = Game.find(params[:game_id])
    @review = @game.reviews.build(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to @game, notice: "Review created successfully"
    else
      render :new
    end
  end

  protected

  def load_game
    @game = Game.find(params[:game_id])
  end

  def review_params
    params.require(:review).permit(:text, :rating_out_of_ten)
  end
end
