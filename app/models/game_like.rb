class GameLike < ApplicationRecord
  belongs_to :user
  belongs_to :game_movie
end
