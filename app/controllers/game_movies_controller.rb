class GameMoviesController < ApplicationController
  def index
    @change_movies = GameMovie.where(catchphrase: "観るだけで人生が変わる試合").order(position: :asc).limit(3)
    @refresh_movies = GameMovie.where(catchphrase: "超リフレッシュする試合").order(position: :asc).limit(3)
    @loss_movies = GameMovie.where(catchphrase: "観ないと損する試合").order(position: :asc).limit(3)
    @liked_game_movie_ids = current_user.game_likes.pluck(:game_movie_id) if user_signed_in?
  end
end
