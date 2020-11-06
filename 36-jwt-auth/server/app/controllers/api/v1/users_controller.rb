class Api::V1::UsersController < ApplicationController
  skip_before_action :logged_in?, only: [:create]
  # Sign Up
  def create
  #  create a new User instance
  user = User.new(user_params)
    if user.valid?
      user.save
      render json: {user: user}, status: :created
    else
      render json: {error: "Failed to create user"}, status: :not_acceptable
    end
    
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
