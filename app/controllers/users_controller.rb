class UsersController < ApplicationController
  before_filter :require_user, :except => [:login]

  def dashboard
  end

  def login
    if current_user
      return redirect_to root_url
    end

    if request.get?
      return render
    end

    @current_user = User.find_by_username(params[:username])
    if @current_user
      session[:current_user_id] = @current_user.id
      redirect_to :dashboard
    end
  end

  def logout
    @current_user = session[:current_user_id] = nil
    session.clear
    redirect_to :login
  end
  
  def index
    
  end

  def new

  end

end
