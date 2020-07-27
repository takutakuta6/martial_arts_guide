class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_index :users, :name, unique: true
    add_column :users, :image, :string
    add_column :users, :introduction, :text
    add_column :users, :birthplace, :string
  end
end
