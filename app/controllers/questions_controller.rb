class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]
    if params[:questions].downcase == 'i am going to work right now!'
      @answer = 'Great!'
    elsif params[:questions].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
