class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:message]
    @answer = answer_to_question
  end

private

  def answer_to_question
    if @query == "I am going to work"
      return "Great"
    elsif @query.end_with? ("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I dont care, get dressed and go to work!"
    end
  end
end




