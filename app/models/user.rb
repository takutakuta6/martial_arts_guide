class User < ApplicationRecord
  has_many :game_likes, dependent: :destroy
  has_many :game_comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, length: { maximum: 20 }
  validates :introduction, length: { maximum: 140 }
  validates :birthplace, length: { maximum: 7 }

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
