ActiveAdmin.register GameMovie do
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
    column :url

    actions
  end
end
