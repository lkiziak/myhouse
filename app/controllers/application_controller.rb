class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def current_user
      @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id]) # Use find_by_id to get nil instead of an error if user doesn't exist
    end

   private

     # Make the current_user method available to views, not just controllers!
    helper_method :current_user

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end

    def authorize
      redirect_to login_path, alert: 'Not authorized, you must be logged in!' if current_user.nil?
    end




