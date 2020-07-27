class GameLike < ApplicationRecord
  belongs_to :user
  belongs_to :game_movie
  validates :user_id, presence: true, numericality: { only_integer: true }, uniqueness: { scope: :game_movie_id }
  validates :game_movie_id, presence: true, numericality: { only_integer: true }
end
