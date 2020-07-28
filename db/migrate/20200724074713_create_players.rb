class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.string :group
      t.string :birthplace
      t.string :content
      t.integer :position
      t.float :height
      t.float :weight
      t.integer :win
      t.integer :lose
      t.integer :ko_win
      t.integer :draw

      t.timestamps
    end
    add_index :players, :name, unique: true
    add_index :players, :group
  end
end
