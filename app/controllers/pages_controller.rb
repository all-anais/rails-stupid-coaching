class PagesController < ApplicationController
  def ask
  end

  def answer
    @my_question = params[:question]
    if @my_question == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @my_question.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
