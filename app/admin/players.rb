ActiveAdmin.register Player do
  active_admin_import
  permit_params Player.attribute_names.map(&:to_sym) - %i[created_at updated_at]

  form do |f|
    f.inputs do
      f.input :group, as: :select, collection: Player::GROUP_VALUES
      f.input :position, min: 1
      f.input :name
      f.input :age
      f.input :style
      f.input :birthplace
      f.input :content
      f.input :height
      f.input :weight
      f.input :win
      f.input :lose
      f.input :ko_win
      f.input :draw
      f.input :movie_url
      f.input :image
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :group
    column :position
    column :name
    column :age
    column :style
    column :height
    column :weight

    actions
  end

  show do
    attributes_table do
      row :group
      row :position
      row :name
      row :age
      row :style
      row :birthplace
      row :content
      row :height
      row :weight
      row :win
      row :lose
      row :ko_win
      row :draw
      row :movie_url
      row :image
      row :image do
        image_tag(player.image.url) if player.image?
      end
    end
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :image, :group, :birthplace, :content, :position, :height, :weight, :battle_record
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :image, :group, :birthplace, :content, :position, :height, :weight, :battle_record]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
