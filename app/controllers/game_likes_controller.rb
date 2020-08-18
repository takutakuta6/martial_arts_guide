class GameLikesController < ApplicationController
  def create
    @game_movie = GameMovie.find(params[:game_movie_id])
    current_user.game_likes.create!(game_movie_id: @game_movie.id)
  end

  def destroy
    @game_movie = GameMovie.find(params[:game_movie_id])
    current_user.game_likes.find_by(game_movie_id: @game_movie.id).destroy!
  end
end
