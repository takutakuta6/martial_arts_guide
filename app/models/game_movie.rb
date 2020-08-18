class GameMovie < ApplicationRecord
  CATCHPHRASE_VALUES = %w[観るだけで人生が変わる試合 超リフレッシュする試合 観ないと損する試合]
  has_many :game_likes, dependent: :destroy
  validates :catchphrase, presence: true, inclusion: { in: CATCHPHRASE_VALUES }
  validates :position, numericality: { only_integer: true }
end
