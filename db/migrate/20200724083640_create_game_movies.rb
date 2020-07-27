class CreateGameMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :game_movies do |t|
      t.string :url
      t.string :catchphrase
      t.integer :position

      t.timestamps
    end
    add_index :game_movies, :url, unique: true
    add_index :game_movies, :catchphrase
  end
end
