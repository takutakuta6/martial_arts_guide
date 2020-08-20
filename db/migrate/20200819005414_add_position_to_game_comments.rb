class AddPositionToGameComments < ActiveRecord::Migration[6.0]
  def change
    add_column :game_comments, :position, :integer, null: false
  end
end
