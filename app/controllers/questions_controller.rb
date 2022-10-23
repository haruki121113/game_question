class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @questions = Question.all.order(id: "DESC")
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:title, :content).merge(user_id: current_user.id)
  end

end
