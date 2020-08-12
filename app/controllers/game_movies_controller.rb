class GameMoviesController < ApplicationController
  def index
    @change_movies = GameMovie.where(catchphrase: "観るだけで人生が変わる試合").order(position: :asc).limit(3)
    @refresh_movies = GameMovie.where(catchphrase: "超リフレッシュする試合").order(position: :asc).limit(3)
    @loss_movies = GameMovie.where(catchphrase: "観ないと損する試合").order(position: :asc).limit(3)
  end
end
