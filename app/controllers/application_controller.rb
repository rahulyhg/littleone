class ApplicationController < ActionController::Base
  include Mobylette::RespondToMobileRequests
  protect_from_forgery

  def current_user
    return @current_user unless @current_user.nil?

    user_id = session[:current_user_id]
    if user_id
      @current_user = User.find_by_id(user_id)
    end 
  end

  def require_user
    if session[:current_user_id].blank?
      redirect_to login_url
    end
  end

end
