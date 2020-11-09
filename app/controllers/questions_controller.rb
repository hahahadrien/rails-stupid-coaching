class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # raise
    @user_message = params[:question]
    if @user_message == "I am going to work right now!"
      @answer = ""
    elsif @user_message.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
