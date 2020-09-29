class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:username])
   
    if @user.valid_name?
      # if user's username is valid 
      #  we want to save that username in session 
      session[:username] = @user.username
      #  set score
      session[:score] = 0 
      # at minimum redirect to THAT user's showpage
      redirect_to "/users/1"
    else
      # might want to use flash messages to explain why it is NOT valid
      flash[:errors] = "You MIGHT want to make your username a little longer"
      redirect_to "/users/new"

    end

    # byebug
  
  end

  def show
    @username = session[:username] 
    # we need a score variable
    @score = session[:score] 
  end
end