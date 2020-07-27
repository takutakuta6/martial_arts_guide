class CreateGameComments < ActiveRecord::Migration[6.0]
  def change
    create_table :game_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game_movie, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
