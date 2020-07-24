module ApplicationHelper
  def base_width
    "devise-width" if devise_controller?
  end
end
