class CommentsController < ApplicationController
 
 def create
    @thought = Thought.find(params[:thought_id])
    @comment = @thought.comments.create(comment_params)
    redirect_to thought_path(@thought)
  end

def destroy
    @thought = Thought.find(params[:thought_id])
    @comment = @thought.comments.find(params[:id])
    @comment.destroy
    redirect_to thought_path(@thought)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
