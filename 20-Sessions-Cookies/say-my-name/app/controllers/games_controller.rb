class GamesController < ApplicationController
  def create
    # byebug
    answer = params[:name]
    # that name MUST be 'Beyonce'
    if answer.downcase == 'beyonce'
      session[:score] += 1 
      flash[:correct] = "Good Job! You said her name"
    else
      flash[:incorrect] = "How do you NOT know?!"
      session[:score] -= 1 
    end

    redirect_to '/users/1'
  end
end
