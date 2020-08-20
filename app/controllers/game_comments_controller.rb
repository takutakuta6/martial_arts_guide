class GameCommentsController < ApplicationController
  before_action :correct_user, only: %i[destroy]

  def create
    game_movie = GameMovie.find(params[:game_movie_id])
    game_comment = current_user.game_comments.new(game_comment_params)
    game_comment.game_movie_id = game_movie.id
    game_comment.position = game_movie.comment_count += 1
    game_movie.save!
    game_comment.save!
    redirect_to game_movie
  end

  def destroy
    game_movie = GameMovie.find(params[:game_movie_id])
    @game_comment.destroy!
    redirect_to game_movie
  end

  private

  def game_comment_params
    params.require(:game_comment).permit(:content)
  end

  def correct_user
    @game_comment = current_user.game_comments.find_by(id: params[:id])
    redirect_to root_path if @game_comment.nil?
  end
end
