class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :move_to_index, except: [:index, :new, :create, :show, :search]
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
    @comment = Comment.new
    @comments = @question.comments.includes(:user)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    if question.update(question_params)
      redirect_to root_path
    end
  end

  def destroy
    question = Question.find(params[:id])
    if question.destroy
      redirect_to root_path
    end
  end

  def search
    @questions = Question.search(params[:keyword])
  end

  private
  def question_params
    params.require(:question).permit(:title, :content).merge(user_id: current_user.id)
  end

  def move_to_index
    @question = Question.find(params[:id])
    if current_user.id != @question.user.id
      redirect_to action: :index
    end
  end

end
