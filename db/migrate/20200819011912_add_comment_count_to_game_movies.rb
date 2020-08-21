class AddCommentCountToGameMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :game_movies, :comment_count, :integer, null: false, default: 0
  end
end
