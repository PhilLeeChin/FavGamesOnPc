class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    

    def require_login 
        redirect_to new_user_session_path unless user_signed_in?
    end

    def set_computer
        @ccomputer = Computer.find_by(id: params[:id])
    end

    def authorize_ccomputer_creator
        redirect_to computers_path unless @computer.creator == current_user
    end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password)}
        end
end
