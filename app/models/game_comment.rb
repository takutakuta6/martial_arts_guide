class GameComment < ApplicationRecord
  belongs_to :user
  belongs_to :game_movie
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :game_movie_id, presence: true, numericality: { only_integer: true }
  validates :content, length: { maximum: 40 }
  validates :position, presence: true
end
