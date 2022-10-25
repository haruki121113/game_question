class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @questions = Question.where(user_id: params[:id])
  end
end
