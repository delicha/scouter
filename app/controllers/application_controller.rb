class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # helper_method :after_sign_in_path_for
  # helper_method :after_sign_out_path_for
  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex, :admin, :hobby, :character, :generation, :point, :image, sub_images: []])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :sex, :admin, :hobby, :character, :generation, :point, :image, sub_images: []])
    end

    def after_sign_in_path_for(resource)
      users_path 
    end
    
    def after_sign_out_path_for(resource)
      root_url
    end
end
