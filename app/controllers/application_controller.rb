class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    helper_method :current_user

    def current_user
      @current_user ||= User.new "Jane", 30, false
    end

    def access_denied
      redirect_to root_path, alert: "DENIED!!!"
    end

    def require_admin
      current_user.admin || access_denied
    end



    # # Before Filter
    # def authorized?
    #   false
    # end

    # def authorize_for_actions!
    #   authorized? || access_denied
    # end



    # # Per Action
    # class AccessDenied < StandardError; end

    # def authorize!(accessible = false)
    #   accessible || raise(AccessDenied)
    # end

    # rescue_from AccessDenied, with: :access_denied

end
