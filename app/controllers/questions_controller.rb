class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you"
    elsif @question == "I am going to work"
      @answer = "Good🔥"
    elsif @question.ends_with?("?")
      @answer = "Silly question,get dressed and go to work"
    else
      @answer = "I don't care, get dressed and got to work"
    end
  end
end
