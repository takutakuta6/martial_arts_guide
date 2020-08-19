class GameMoviesController < ApplicationController
  def index
    @change_movies = GameMovie.where(catchphrase: "観るだけで人生が変わる試合").order(position: :asc).limit(3)
    @refresh_movies = GameMovie.where(catchphrase: "超リフレッシュする試合").order(position: :asc).limit(3)
    @loss_movies = GameMovie.where(catchphrase: "観ないと損する試合").order(position: :asc).limit(3)
    @liked_game_movie_ids = current_user.game_likes.pluck(:game_movie_id) if user_signed_in?
  end

  def show
    @game_movie = GameMovie.find(params[:id])
    @game_comments = @game_movie.game_comments.order(id: "DESC")
    @game_comment = GameComment.new
  end
end
