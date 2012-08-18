class ApplicationController < ActionController::Base
  include Mobylette::RespondToMobileRequests
  protect_from_forgery

  def current_user
     
  end

end
