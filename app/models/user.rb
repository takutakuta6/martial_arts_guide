class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, length: { maximum: 20 }
  validates :introduction, length: { maximum: 140 }
  validates :birthplace, length: { maximum: 7 }
end
