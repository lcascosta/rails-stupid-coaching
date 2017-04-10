class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    if @question.upcase == "I AM GOING TO WORK RIGHT NOW!"
        @answer = ""
      elsif @question.include?("?") && @question == @question.upcase
        @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
      elsif @question.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif @question.upcase
        @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
