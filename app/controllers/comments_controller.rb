class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current.user.id, question_id: params[:question_id])
  end
end
