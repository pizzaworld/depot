class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protected
    def set_i18n_locale_from_params
      if params[:locale]
        if i18n.available_locales.map(&:to_s).include?(params[:locale])
          i18n.locale = params[:locale]
        else
          flash.now[:notice] =
            "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end
    def default_url_options
        { locale: i18n.locale }
    end
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
end
