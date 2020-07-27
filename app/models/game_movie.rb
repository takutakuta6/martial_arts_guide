class GameMovie < ApplicationRecord
  validates :catchphrase, presence: true, length: { maximum: 40 }
  validates :position, numericality: { only_integer: true }
end
