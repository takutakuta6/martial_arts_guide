class RenameRecordColumnToPlayers < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :record, :battle_record
  end
end
