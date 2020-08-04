class Player < ApplicationRecord
  GROUP_VALUES = %w[RIZIN K-1]
  validates :name, presence: true, length: { maximum: 100 }
  validates :group, presence: true, inclusion: { in: GROUP_VALUES }
  validates :birthplace, length: { maximum: 20 }
  validates :content, length: { maximum: 10000 }
  validates :age, numericality: { only_integer: true }
  validates :position, numericality: { only_integer: true }
  validates :height, presence: true, numericality: true
  validates :weight, presence: true, numericality: true
  validates :win, numericality: { only_integer: true }
  validates :lose, numericality: { only_integer: true }
  validates :ko_win, numericality: { only_integer: true }
  validates :draw, numericality: { only_integer: true }
  mount_uploader :image, ImageUploader
end
