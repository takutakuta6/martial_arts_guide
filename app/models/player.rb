class Player < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :group, presence: true, length: { maximum: 100 }
  validates :birthplace, length: { maximum: 20 }
  validates :content, length: { maximum: 10000 }
  validates :position, numericality: { only_integer: true }
  validates :height, presence: true, numericality: true
  validates :weight, presence: true, numericality: true
  validates :record, numericality: { only_integer: true }
