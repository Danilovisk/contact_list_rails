class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :danger, :info ,:warning, :success 
  include SessionsHelper    
  
  private
    def required_logged_in_user
      unless user_signed_in?
        flash[:danger] = "Area restrita. Por favor, realize o login."
        redirect_to entrar_path
      end
    end
end
