ActiveAdmin.register Player do
  permit_params Player.attribute_names.map(&:to_sym) - %i[created_at updated_at]

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
