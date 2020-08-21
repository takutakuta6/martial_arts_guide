ActiveAdmin.register GameMovie do
  active_admin_import
  permit_params :url, :catchphrase, :position

  form do |f|
    f.inputs do
      # f.input :group, as: :select, collection: Player::GROUP_VALUES
      f.input :catchphrase, as: :select, collection: GameMovie::CATCHPHRASE_VALUES
      f.input :position, min: 1
      f.input :url
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :catchphrase
    column :position
    column :comment_count
    column :url

    actions
  end
end
