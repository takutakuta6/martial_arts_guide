class CreateGameLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :game_likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game_movie, null: false, foreign_key: true

      t.timestamps
    end
    add_index :game_likes, [:user_id, :game_movie_id], unique: true
  end
end
